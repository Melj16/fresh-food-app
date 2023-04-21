from flask import Blueprint, request, jsonify, make_response, current_app
import json
from src import db


matt = Blueprint('matt', __name__)

# Get the spending of a specific user
@matt.route('/spending/<userID>', methods=['GET'])
def get_spending(userID):
    cursor = db.get_db().cursor()
    cursor.execute('SELECT food_name, cost * quantity FROM User_Food \
                   INNER JOIN Food F on User_Food.food_id = F.food_id \
                   WHERE user_id = {0};'.format(userID))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# Get the Expiration Date of a specific user
@matt.route('/expirationDate/<userID>', methods=['GET'])
def get_expiration_date(userID):
    cursor = db.get_db().cursor()
    cursor.execute('SELECT food_name, expiration_date FROM User_Food UF \
        inner join Food F on F.food_id = UF.food_id \
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
@matt.route('/createGroceryList', methods=['POST'])
def create_grocery_list():
    data = request.json
    current_app.logger.info(data)

    list_name = data['list_name']
    user_id = data['user_id']
    household_id = data['household_id']

    query = 'insert into Grocery_List (list_name, user_id, household_id) values ("'
    query += list_name + '", '
    query += str(user_id) + ', '
    query += str(household_id) + ')'
    current_app.logger.info(query)

    cursor = db.get_db().cursor()
    cursor.execute(query)
    db.get_db().commit()

    return 'Success'

# update a grocery list by adding a food
@matt.route('/updateGroceryList', methods=['PUT'])
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

# delete a grocery list
@matt.route('/deleteGroceryList/<listID>', methods=['DELETE'])
def delete_grocery_list(listID):
    cursor = db.get_db().cursor()
    cursor.execute('DELETE FROM Grocery_List WHERE list_id = {0};'.format(listID))
    db.get_db().commit()

    the_response = "Successfully Deleted Grocery List {0}".format(listID)

    return the_response

# Get the foods from a grocery list
@matt.route('/groceryList/<listID>', methods=['GET'])
def get_grocery_list(listID):
    cursor = db.get_db().cursor()
    cursor.execute('SELECT food_name FROM Grocery_List \
        inner join Food F on Grocery_List.list_id = F.list_id \
        WHERE Grocery_List.list_id = {0};'.format(listID))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# Get the price of a specific food
@matt.route('/price/<foodID>', methods=['GET'])
def get_price(foodID):
    cursor = db.get_db().cursor()
    cursor.execute('SELECT food_name, cost FROM Food F \
        inner join User_Food UF on UF.food_id = F.food_id \
        WHERE UF.user_id = {0};'.format(foodID))
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