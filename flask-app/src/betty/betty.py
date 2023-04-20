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

# Get the foods from a grocery list
@betty.route('/groceryList/<listID>', methods=['GET'])
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

# create grocery lists 
@betty.route('/createGroceryList', methods=['PUT'])
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

# delete a grocery list
@betty.route('/deleteGroceryList/<listID>', methods=['DELETE'])
def delete_grocery_list(listID):
    cursor = db.get_db().cursor()
    cursor.execute('DELETE FROM Grocery_List WHERE list_id = {0};'.format(listID))
    db.get_db().commit()

    the_response = "Successfully Deleted Grocery List {0}".format(listID)

    return the_response

# find all the recipes that contain the given food ID
@betty.route('/findRecipes/<foodID>', methods=['GET'])
def find_recipes(foodID):
    cursor = db.get_db().cursor()
    cursor.execute('SELECT R.recipe_id, recipe_name FROM Recipe_Food JOIN Recipes R on \
                   Recipe_Food.recipe_id = R.recipe_id \
                   WHERE food_id = {0};'.format(foodID))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# return a list of foods from a recipe ID
@betty.route('/findRecipeFoods/<recipeID>', methods=['GET'])
def find_recipes_foods(recipeID):
    cursor = db.get_db().cursor()
    cursor.execute('SELECT food_name FROM Recipe_Food JOIN \
                   Food F on Recipe_Food.food_id = F.food_id \
                   WHERE recipe_id = {0};'.format(recipeID))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# create recipes
@betty.route('/createRecipe', methods=['PUT'])
def create_recipe():
    data = request.json
    current_app.logger.info(data)

    recipe_name = data['recipe_name']

    query = 'insert into Recipes (recipe_name) values ("'
    query += recipe_name + '")'
    current_app.logger.info(query)

    cursor = db.get_db().cursor()
    cursor.execute(query)
    db.get_db().commit()

    return_message = 'Successfully created recipe {0}'.format(recipe_name)

    return return_message

# add a food to a specific recipe with recipeID
@betty.route('/updateRecipe', methods=['POST'])
def update_recipe():
    data = request.json
    current_app.logger.info(data)

    recipe_id = data['recipe_id']
    food_id = data['food_id']

    query = 'insert into Recipe_Food (recipe_id, food_id) values ('
    query += str(recipe_id) + ', '
    query += str(food_id) + ')'
    current_app.logger.info(query)

    cursor = db.get_db().cursor()
    cursor.execute(query)
    db.get_db().commit()

    return_message = 'Successfully added food id {0} to recipe id {1}'.format(food_id, recipe_id)

    return return_message