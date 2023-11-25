import os
import psycopg2
from dotenv import load_dotenv

load_dotenv()

DB_NAME = os.getenv('DB_NAME')
DB_PORT = os.getenv('DB_PORT')
DB_PASSWORD=os.getenv('DB_PASSWORD')
DB_USER=os.getenv('DB_USER')
DB_HOST=os.getenv('DB_HOST')

# conn = psycopg2.connect(database = DB_NAME, 
#                         user = DB_USER, 
#                         host= DB_HOST,
#                         password = DB_PASSWORD,
#                         port = DB_PORT)


# cursor = conn.cursor()


def get_database_url():
    try:
        conn = psycopg2.connect(database = DB_NAME, 
                        user = DB_USER, 
                        host= DB_HOST,
                        password = DB_PASSWORD,
                        port = DB_PORT)

        return conn
    except Exception as e:
        print(f"Error connecting to the database: {str(e)}")
        return None 




def get_all_data(table):
    conn = get_database_url()
    cursor = conn.cursor()
    if cursor is None:
        return
    
    try:
        insert_query = '''
            SELECT * FROM {};
        '''.format(table)
        cursor.execute(insert_query)
        rows = cursor.fetchall()
        return rows
    
    except Exception as er:
        print(f"Error: {er}")
        return None
    finally:
        cursor.close()
        conn.close()



def insert_transport_data(data):
    conn = get_database_url()
    cursor = conn.cursor()

    if conn is None:
        return
    try:
        for transport_type, emission_per_km in data.items():
            insert_query = '''
                INSERT INTO transport (transport_type, emission_per_km)
                VALUES(%s, %s);
            '''
            cursor.execute(insert_query, (transport_type, emission_per_km))
            conn.commit()
            print("Data inserted successfully")

    except Exception as e:
        conn.rollback()
        print(f"Error: {e}")

    finally:
        cursor.close()
        conn.close()


def get_transport_type(transport):
    conn = get_database_url()
    cursor = conn.cursor()

    if conn is None:
        return
    try:
        query = '''
           SELECT emission_per_km FROM transport WHERE transport_type = %s;
        '''
        cursor.execute(query, (transport,))
        rows = cursor.fetchone()
        return rows[0]
    
    except Exception as er:
        print(f"Error: {er}")
        return None
    finally:
        cursor.close()
        conn.close()



def insert_car_models(row):
    conn = get_database_url()
    cursor = conn.cursor()

    if conn is None:
        return
    try:
        query = """
                INSERT INTO car_models (manufacturer, make, fuel, version, co2_per_km, electric_wh_km)
                VALUES (%s, %s, %s, %s, %s, %s);
                """

        values = (row['Manufacturer'], 
                  row['Make'],
                  row['Fuel'], 
                  row['Version'], 
                  row['CO2 (g/km)'], 
                  row['Electric (Wh/km)'])
        cursor.execute(query, values)
        conn.commit()
        print("value inserted")
    except Exception as e:
        conn.rollback()
        print(f"Error: {e}")

    finally:
        cursor.close()
        conn.close()

    


def get_unique_manufacturer_list():
    conn = get_database_url()
    cursor = conn.cursor()

    if conn is None:
        return
    try:
        query = '''
           SELECT DISTINCT manufacturer FROM car_models;
        '''
        cursor.execute(query)
        rows = cursor.fetchall()

        clean_list = []
        for row in rows:
            clean_list.append(row[0])

        return clean_list
    
    except Exception as er:
        print(f"Error: {er}")
        return None
    finally:
        cursor.close()
        conn.close()



def group_manufacterer():
    conn = get_database_url()
    cursor = conn.cursor()

    if conn is None:
        return
    try:
        query = '''
           SELECT
            Manufacturer,
            Make,
            Fuel,
            Version
        FROM
            Car_Models
        GROUP BY
            Manufacturer, Make, Fuel, Version;
        '''
        cursor.execute(query)
        rows = cursor.fetchall()

        return rows

    except Exception as er:
        print(f"Error: {er}")
        return None
    finally:
        cursor.close()
        conn.close()


def create_table_from_grouped_manufacterer():
    conn = get_database_url()
    cursor = conn.cursor()

    if conn is None:
        return
    try:
        query = '''
           CREATE TABLE grouped_car_models AS
           SELECT
            Manufacturer,
            Make,
            Fuel,
            Version
        FROM
            Car_Models
        GROUP BY
            Manufacturer, Make, Fuel, Version;
        '''
        cursor.execute(query)
        conn.commit()

        print("New grouped table created successfully.")

    except Exception as er:
        print(f"Error: {er}")
        return None
    finally:
        cursor.close()
        conn.close()





def get_by_manufacturer_name(manufacturer):
    conn = get_database_url()
    cursor = conn.cursor()

    if conn is None:
        return
    try:
        query = '''
           SELECT * FROM grouped_car_models WHERE Manufacturer = %s;
        '''
        cursor.execute(query, (manufacturer,))
        rows = cursor.fetchall()

        return rows
    
    except Exception as er:
        print(f"Error: {er}")
        return None
    finally:
        cursor.close()
        conn.close()


def get_emission_by_car_type(manufecturer, version):

    conn = get_database_url()
    cursor = conn.cursor()

    if conn is None:
        return
    try:
        query = '''
           SELECT co2_per_km, electric_wh_km FROM car_models 
           WHERE Manufacturer =%s 
           AND Version=%s;
        '''
        cursor.execute(query, (manufecturer, version))
        rows = cursor.fetchall()

        return rows
    
    except Exception as er:
        print(f"Error: {er}")
        return None
    finally:
        cursor.close()
        conn.close()







if __name__ == "__main__":
    data = {
        "car": 192,
        "train": 23,
        "plane": 255,
        "subway":40,
        "bus":822,
        "motorcycle":103
    }

    # insert_transport_data(data)

    create_table_from_grouped_manufacterer()