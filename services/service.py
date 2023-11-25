from db.db import *


def carbon_calculator(transportation, distance_in_m):
    result = get_transport_type(transportation)

    if result:
        distance_in_km = meter_to_km(int(distance_in_m))
        total_gramm = int(result) * distance_in_km
        total_kg = round((total_gramm / 1000), 2)

        return str(total_kg) + " kg"
    else:
        return f"{transportation} not found"


def carbon_calc_for_car(manufecturer,version, distance_in_m):
    result = get_emission_by_car_type(manufecturer, version)

    if result:
        distance_in_km = meter_to_km(int(distance_in_m))
        
        co2, wh_km = result[0]
        print(f"co2: {co2}")
        print(f"wh per km: {wh_km}")
        total_gramm = 0
        if co2 != "0.0":
            total_gramm += int(co2) * distance_in_km
        
        if wh_km != "0.0":
            total_gramm += int(wh_km) * distance_in_km

        total_kg = round((total_gramm / 1000), 2)
        return str(total_kg) + "kg"
    

    else:
        return "Not Found"



def meter_to_km(meter):
    km = meter / 1000
    return km



if __name__ == "__main__":
    carbon_calculator("car", 23)