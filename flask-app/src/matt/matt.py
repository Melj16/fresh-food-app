from flask import Blueprint, request, jsonify, make_response, current_app
import json
from src import db


matt = Blueprint('matt', __name__)

# Get the inventory of a specific user
@matt.route('/inventory/<userID>', methods=['GET'])
def get_inventory(userID):
    cursor = db.get_db().cursor()
    cursor.execute('SELECT first_name, food_name, expiration_date FROM Users \
        inner join User_Food UF on Users.user_id = UF.user_id \
        inner join Food F on UF.food_id = F.food_id \
        WHERE UF.user_id = {0};'.format(userID))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# Get the inventory of a specific user
@matt.route('/inventory/<userID>', methods=['GET'])
def get_inventory(userID):
    cursor = db.get_db().cursor()
    cursor.execute('SELECT first_name, food_name, expiration_date FROM Users \
        outter join User_Food UF on Users.user_id = UF.user_id \
        outter join Food F on UF.food_id = F.food_id \
        WHERE UF.user_id = {0};'.format(userID))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response