from flask import Blueprint, request, jsonify, make_response, current_app
import json
from src import db


betty = Blueprint('betty', __name__)

# Get the inventory of a specific user
@betty.route('/inventory/<userID>', methods=['GET'])
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

# create grocery lists 
@betty.route('/createGroceryList', methods=['PUT'])
def create_grocery_list():
    data = request.json
    current_app.logger.info(data)

    list_id = data['list_id']
    list_name = data['list_name']
    user_id = data['user_id']
    household_id = data['household_id']

    query = 'insert into Grocery_List (list_id, list_name, user_id, household_id) values ('
    query += str(list_id) + ', "'
    query += list_name + '", '
    query += str(user_id) + ', '
    query += str(household_id) + ')'
    current_app.logger.info(query)

    cursor = db.get_db().cursor()
    cursor.execute(query)
    db.get_db().commit()

    return 'Success'

# update a grocery list by adding a food
@betty.route('/updateGroceryList', methods=['POST'])
def update_grocery_list():
    data = request.json
    current_app.logger.info(data)

    list_id = data['list_id']
    food_name = data['food_name']

    query = 'insert into Food (list_id, food_name) values ('
    query += str(list_id) + ', "'
    query += food_name + '")'
    current_app.logger.info(query)

    cursor = db.get_db().cursor()
    cursor.execute(query)
    db.get_db().commit()

    return 'Success'