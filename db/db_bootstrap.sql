-- This file is to bootstrap a database for the CS3200 project. 

-- Create a new database.  You can change the name later.  You'll
-- need this name in the FLASK API file(s),  the AppSmith 
-- data source creation.
create database fresh_food_db;

-- Via the Docker Compose file, a special user called webapp will 
-- be created in MySQL. We are going to grant that user 
-- all privilages to the new database we just created. 
-- TODO: If you changed the name of the database above, you need 
-- to change it here too.
grant all privileges on fresh_food_db.* to 'webapp'@'%';
flush privileges;

-- Move into the database we just created.
-- TODO: If you changed the name of the database above, you need to
-- change it here too. 
use fresh_food_db;

-- -------------------------
-- create table for Users
-- -------------------------
CREATE TABLE IF NOT EXISTS Users (
    user_id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50),
    email VARCHAR(50) NOT NULL UNIQUE,
    phone_number VARCHAR(50) UNIQUE,
    household_id INT,
    PRIMARY KEY (user_id)
);

-- ---------------------------
-- create table for Household
-- ---------------------------
CREATE TABLE IF NOT EXISTS Household (
    household_name VARCHAR(50),
    household_id INT NOT NULL,
    PRIMARY KEY (household_id)
);

-- -------------------------------
-- create table for User Household
-- -------------------------------
CREATE TABLE IF NOT EXISTS User_Household (
    user_id INT NOT NULL,
    household_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (household_id) REFERENCES Household(household_id)
);

-- -----------------------------
-- create table for Category
-- -----------------------------
CREATE TABLE IF NOT EXISTS Category (
    category_id INT NOT NULL AUTO_INCREMENT,
    category_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (category_id)
);

-- -----------------------------
-- create table for Grocery List
-- -----------------------------
CREATE TABLE IF NOT EXISTS Grocery_List (
    list_id INT NOT NULL AUTO_INCREMENT,
    list_name VARCHAR(50),
    user_id INT,
    household_id INT,
    PRIMARY KEY (list_id),
    FOREIGN KEY (user_id)
        REFERENCES Users(user_id),
    FOREIGN KEY (household_id)
        REFERENCES Household(household_id)
);

-- -----------------------------
-- create table for Food
-- -----------------------------
CREATE TABLE IF NOT EXISTS Food (
    food_id INT NOT NULL AUTO_INCREMENT,
    list_id INT,
    food_name VARCHAR(50) NOT NULL,
    category_id INT,
    cost DOUBLE,
    PRIMARY KEY (food_id),
    FOREIGN KEY (category_id)
        REFERENCES Category(category_id),
    FOREIGN KEY (list_id)
        REFERENCES Grocery_List(list_id)
);

-- -----------------------------
-- create table for Recipes
-- -----------------------------
CREATE TABLE IF NOT EXISTS Recipes (
    recipe_id INT NOT NULL AUTO_INCREMENT,
    recipe_name VARCHAR(50),
    PRIMARY KEY (recipe_id)
);

-- ---------------------------------
-- create table for Food Categories
-- ---------------------------------
CREATE TABLE IF NOT EXISTS Recipe_Food (
    recipe_id INT NOT NULL,
    food_id INT NOT NULL,
    FOREIGN KEY (recipe_id)
        REFERENCES Recipes(recipe_id),
    FOREIGN KEY (food_id)
        REFERENCES Food(food_id)
);

-- -----------------------------
-- create table for Fridge
-- -----------------------------
CREATE TABLE IF NOT EXISTS Fridge (
    fridge_id INT NOT NULL AUTO_INCREMENT,
    fridge_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (fridge_id)
);

-- --------------------------------
-- create table for Household Fridge
-- --------------------------------
CREATE TABLE IF NOT EXISTS Household_Fridge (
    household_id INT NOT NULL,
    fridge_id INT NOT NULL,
    location_id INT NOT NULL,
    FOREIGN KEY (household_id)
        REFERENCES Household(household_id),
    FOREIGN KEY (fridge_id)
        REFERENCES Fridge(fridge_id)
);

-- -----------------------------
-- create table for Location
-- -----------------------------
CREATE TABLE IF NOT EXISTS Location (
    location_id INT NOT NULL AUTO_INCREMENT UNIQUE,
    fridge_id INT,
    PRIMARY KEY (location_id),
    FOREIGN KEY (fridge_id)
        REFERENCES Fridge(fridge_id)
);

-- -----------------------------
-- create table for User Food
-- -----------------------------
CREATE TABLE IF NOT EXISTS User_Food (
    user_id INT NOT NULL,
    food_id INT NOT NULL,
    shared BOOLEAN,
    expiration_date DATE,
    purchase_date DATE DEFAULT (CURRENT_DATE),
    location_id INT NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (user_id)
        REFERENCES Users(user_id),
    FOREIGN KEY (food_id)
        REFERENCES Food(food_id),
    FOREIGN KEY (location_id)
        REFERENCES Location(location_id)
);

-- -----------------------------
-- create table for Shelves
-- -----------------------------
CREATE TABLE IF NOT EXISTS Shelves (
    shelf_id INT NOT NULL UNIQUE,
    shelf_type VARCHAR(50),
    shelf_name VARCHAR(50),
    PRIMARY KEY (shelf_id),
    FOREIGN KEY (shelf_id)
        REFERENCES Location(location_id)
);

-- -----------------------------
-- create table for Doors
-- -----------------------------
CREATE TABLE IF NOT EXISTS Door (
    door_id INT NOT NULL UNIQUE,
    door_name VARCHAR(50),
    PRIMARY KEY (door_id),
    FOREIGN KEY (door_id)
        REFERENCES Location(location_id)
);

-- -----------------------------
-- create table for Drawer
-- -----------------------------
CREATE TABLE IF NOT EXISTS Drawer (
    drawer_id INT NOT NULL UNIQUE,
    drawer_type VARCHAR(50),
    drawer_name VARCHAR(50),
    PRIMARY KEY (drawer_id),
    FOREIGN KEY (drawer_id)
        REFERENCES Location(location_id)
);

-- -----------------------------
-- create table for Freezer
-- -----------------------------
CREATE TABLE IF NOT EXISTS Freezer (
    freezer_id INT NOT NULL UNIQUE,
    freezer_name VARCHAR(50),
    PRIMARY KEY (freezer_id),
    FOREIGN KEY (freezer_id)
        REFERENCES Location(location_id)
);

-- ----------------------------
-- Insert Data into Database --
-- ----------------------------

-- Insert into users table
INSERT INTO Users(first_name, last_name, email, phone_number)
VALUES ('Betty', 'Crocker', 'bettycrocker@gmail.com', '(978)-111-2222'),
       ('Matt', 'Young', 'mattyoung@yahoo.com', '(781)-123-4567'),
       ('Olivia', 'Sampson', 'oliviasampson@northeastern.edu', '(243)-111-3333'),
       ('Dylan', 'Bob', 'dylanbob@hotmail.com', '(321)-654-9876');

-- Insert into household table
INSERT INTO Household(household_name, household_id)
VALUES ('Betty and Olivia', 1),
       ('Matt and Dylan', 2);

-- Insert into User_Household table
-- assign users to households
INSERT INTO User_Household(user_id, household_id)
VALUES (1, 1), (2, 2), (3, 1), (4, 2);

-- Insert into category table
INSERT INTO Category(category_id, category_name)
VALUES (1, 'protein'),
       (2, 'dairy'),
       (3, 'carbs'),
       (4, 'dessert');

-- Insert into grocery list table
INSERT INTO Grocery_List(list_name, user_id, household_id)
VALUES ('Bettys list', 1, 1), ('Matts List', 2, 2);

-- Insert into Food Table
INSERT INTO Food(list_id, food_name, category_id, cost)
VALUES (1, 'eggs', 1, 5.99),
       (2, 'bread', 3, 3.99);

INSERT INTO Food(food_name, category_id)
VALUES ('butter', 2),
       ('ice cream', 4),
       ('Ham', 1),
       ('Turkey', 1);

-- Insert into fridge table
INSERT INTO Fridge(fridge_name)
VALUES ('Fridge 1'), ('Fridge 2'), ('Fridge 3');

-- Insert into Household Fridge table
INSERT INTO Household_Fridge(household_id, fridge_id, location_id)
VALUES (1, 1, 1), (1, 2, 2), (1, 3, 3);

-- Insert into Location table
INSERT INTO Location(location_id, fridge_id)
VALUES (1, 1), (2, 1), (3, 2);

-- Insert into shelf table
INSERT INTO Shelves(shelf_id, shelf_type, shelf_name)
VALUES (1, 'upper', 'shelf 1');

-- Insert into drawer table
INSERT INTO Drawer(drawer_id, drawer_type, drawer_name)
VALUES (2, 'lower', 'drawer 1');

-- Insert into freezer table
INSERT INTO Freezer(freezer_id, freezer_name)
VALUES (3, 'freezer 1');

-- Insert into User_Food Table
-- assign food to users
INSERT INTO User_Food(user_id, food_id, shared, expiration_date, location_id, quantity)
VALUES (1, 1, FALSE, '2023-05-01', 1, 12),
       (2, 2, TRUE, '2024-04-01', 1, 2),
       (3, 3, FALSE, '2023-05-15', 2, 1),
       (4, 4, TRUE, '2023-06-01', 3, 3);

-- Insert into recipes table
INSERT INTO Recipes(recipe_name)
VALUES ('Egg and bread'), ('Ham and Turkey'), ('Lasagna');

-- Insert into recipes food table
INSERT INTO Recipe_Food(recipe_id, food_id)
VALUES (1, 1), (1, 3), -- egg and bread
       (2, 5), (2, 6); -- ham and turkey