from flask import Flask, jsonify, request
from services import service
from db import db


app = Flask(__name__)


@app.route('/')
def hello_app():
    return "Hello Carbon Comission Calculator"


@app.route('/api/v1/emission', methods=['GET'])
def get_transport_emission():

    transport = request.args.get('transport')
    distance = request.args.get('distance')

    emission = service.carbon_calculator(transport, distance)

    response = jsonify(response=emission)
    response.headers.add("Access-Control-Allow-Origin", "*")

    return response



@app.route('/api/v1/car/list')
def get_unique_cars():
    cars = db.get_unique_manufacturer_list()
    response = jsonify(response=cars)
    response.headers.add("Access-Control-Allow-Origin", "*")

    return response



@app.route('/api/v1/car')
def get_car_models():
    car = request.args.get("model")
    car = car.strip().capitalize()

    car_models = db.get_by_manufacturer_name(car)

    response = jsonify(response=car_models)
    response.headers.add("Access-Control-Allow-Origin", "*")

    return response



@app.route('/api/v1/car/emission')
def get_car_emission():
    car = request.args.get("car")
    version =request.args.get("version")
    distance = request.args.get("distance")
   
    car = car.strip().capitalize()
    print(f"Car: {car}")
    print(f"version: {version} ")
    print(f"distance {distance}")
    response = service.carbon_calc_for_car(car, version, distance)

    response = jsonify(response=response)
    response.headers.add("Access-Control-Allow-Origin", "*")

    return response




# run the app
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)