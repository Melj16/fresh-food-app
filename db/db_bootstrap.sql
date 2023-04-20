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
    PRIMARY KEY (user_id)
);

-- -------------------------
-- add sample data for users
-- -------------------------

INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (1,'Winnah','Windless','wwindless0@addtoany.com','840-234-7041');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (2,'Sheilakathryn','Kuhle','skuhle1@reddit.com','431-310-7721');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (3,'Meghann','Lammerts','mlammerts2@wsj.com','184-674-0906');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (4,'Padget','Cardello','pcardello3@chron.com','959-361-3481');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (5,'Kalie','Orys','korys4@businessweek.com','521-148-6354');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (6,'Obediah','Caplen','ocaplen5@hao123.com','465-979-4813');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (7,'Tim','Maddock','tmaddock6@baidu.com','466-414-7276');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (8,'Evanne','Shailer','eshailer7@engadget.com','776-788-2934');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (9,'Noe','Parrington','nparrington8@printfriendly.com','821-780-5915');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (10,'Cchaddie','Pinilla','cpinilla9@linkedin.com','624-325-0503');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (11,'Beauregard','Deavin','bdeavina@squarespace.com','310-476-2492');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (12,'Cole','Deddum','cdeddumb@sbwire.com','785-740-1875');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (13,'Stacey','Voysey','svoyseyc@google.ru','314-523-8062');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (14,'Kikelia','De Leek','kdeleekd@unesco.org','909-968-9096');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (15,'Misha','Davidov','mdavidove@mozilla.com','871-544-6507');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (16,'Kata','Mabb','kmabbf@chronoengine.com','983-935-5377');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (17,'Margalo','Morgan','mmorgang@rambler.ru','750-587-1282');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (18,'Vicki','Deinhard','vdeinhardh@yandex.ru','389-737-2882');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (19,'Beverly','Tabrett','btabretti@elpais.com','620-919-5197');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (20,'Ivy','Prendeguest','iprendeguestj@bloomberg.com','960-880-8252');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (21,'Federico','Cussons','fcussonsk@google.co.uk','478-410-0157');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (22,'Hildegaard','McTerry','hmcterryl@unesco.org','158-784-3075');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (23,'Freedman','Ganforth','fganforthm@ucoz.ru','241-601-2910');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (24,'Grayce','Tape','gtapen@bigcartel.com','949-927-6576');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (25,'Prescott','Dyson','pdysono@bing.com','945-472-4459');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (26,'Marleah','Sillwood','msillwoodp@vistaprint.com','952-224-6282');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (27,'Katusha','Twinberrow','ktwinberrowq@ebay.com','614-138-6125');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (28,'Fonsie','Dmitrievski','fdmitrievskir@reference.com','247-894-3835');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (29,'Lazar','Rings','lringss@yellowbook.com','630-945-6897');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (30,'Amandy','Dunn','adunnt@webnode.com','327-930-8555');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (31,'Adolpho','Shakelady','ashakeladyu@smh.com.au','411-107-6463');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (32,'Kirstyn','Blaney','kblaneyv@com.com','193-105-8060');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (33,'Henriette','Bicheno','hbichenow@reuters.com','779-981-3600');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (34,'Ddene','Silversmid','dsilversmidx@dot.gov','134-559-5926');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (35,'Griffin','Lamba','glambay@ted.com','662-827-6925');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (36,'Jaquenetta','Nutbrown','jnutbrownz@homestead.com','628-209-3693');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (37,'Brandie','Piner','bpiner10@rambler.ru','703-793-7701');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (38,'Dreddy','Yglesia','dyglesia11@nsw.gov.au','852-188-4255');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (39,'Joyan','Leagas','jleagas12@ed.gov','273-575-1756');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (40,'Leigha','Dowall','ldowall13@photobucket.com','368-364-8325');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (41,'Law','Frostdick','lfrostdick14@independent.co.uk','651-209-3354');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (42,'Liv','Sedgebeer','lsedgebeer15@goo.gl','439-552-6875');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (43,'Huntington','Jeenes','hjeenes16@rambler.ru','540-623-2327');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (44,'Clarey','Smallpeice','csmallpeice17@moonfruit.com','416-177-3246');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (45,'Shaine','Skittles','sskittles18@merriam-webster.com','264-462-1717');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (46,'Diannne','Alwood','dalwood19@taobao.com','647-217-4258');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (47,'Gratiana','O''Crevan','gocrevan1a@imdb.com','343-629-7655');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (48,'Magdaia','Skeleton','mskeleton1b@cisco.com','171-484-3457');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (49,'Lea','Stutely','lstutely1c@github.io','276-343-9482');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (50,'Averil','Carwardine','acarwardine1d@harvard.edu','138-968-6930');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (51,'Araldo','Ipsgrave','aipsgrave1e@baidu.com','747-266-0269');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (52,'Pavlov','Spinnace','pspinnace1f@psu.edu','106-515-9104');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (53,'Freddi','Gillson','fgillson1g@mlb.com','505-148-0746');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (54,'Barbabas','Vyel','bvyel1h@timesonline.co.uk','852-329-5884');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (55,'Guglielmo','Caplan','gcaplan1i@cloudflare.com','903-487-1270');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (56,'Sibbie','Gowrie','sgowrie1j@ibm.com','616-623-8128');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (57,'Collen','Parkeson','cparkeson1k@studiopress.com','195-316-0489');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (58,'Ariel','Shurmore','ashurmore1l@wufoo.com','237-914-7788');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (59,'Leonhard','Ciciotti','lciciotti1m@google.fr','829-615-9292');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (60,'Konstance','McLise','kmclise1n@cornell.edu','983-884-0729');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (61,'Karia','Drage','kdrage1o@gnu.org','501-887-6910');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (62,'Calv','Wessing','cwessing1p@uiuc.edu','292-384-3049');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (63,'Rivy','Petigrew','rpetigrew1q@umn.edu','651-505-8802');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (64,'Melisande','Eaglesham','meaglesham1r@ucoz.ru','557-251-7967');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (65,'Fremont','Cawse','fcawse1s@ustream.tv','652-122-5487');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (66,'Adda','Neenan','aneenan1t@toplist.cz','704-548-1728');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (67,'Lanny','Claridge','lclaridge1u@cnn.com','636-706-8287');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (68,'Kimberley','Forde','kforde1v@histats.com','952-902-9800');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (69,'Nyssa','Gibbon','ngibbon1w@odnoklassniki.ru','830-196-2753');
INSERT INTO Users(user_id,first_name,last_name,email,phone_number) VALUES (70,'Rahel','Dooler','rdooler1x@answers.com','737-307-5561');

-- ---------------------------
-- create table for Household
-- ---------------------------
CREATE TABLE IF NOT EXISTS Household (
    household_name VARCHAR(50),
    household_id INT NOT NULL,
    PRIMARY KEY (household_id)
);

-- ---------------------------
-- Add sample data for household
-- ---------------------------

INSERT INTO Household(household_id,household_name) VALUES (1,'Bitchip');
INSERT INTO Household(household_id,household_name) VALUES (2,'Overhold');
INSERT INTO Household(household_id,household_name) VALUES (3,'Sub-Ex');
INSERT INTO Household(household_id,household_name) VALUES (4,'Trippledex');
INSERT INTO Household(household_id,household_name) VALUES (5,'Zoolab');
INSERT INTO Household(household_id,household_name) VALUES (6,'Flexidy');
INSERT INTO Household(household_id,household_name) VALUES (7,'Voyatouch');
INSERT INTO Household(household_id,household_name) VALUES (8,'Zamit');
INSERT INTO Household(household_id,household_name) VALUES (9,'Duobam');
INSERT INTO Household(household_id,household_name) VALUES (10,'Job');
INSERT INTO Household(household_id,household_name) VALUES (11,'Zathin');
INSERT INTO Household(household_id,household_name) VALUES (12,'Veribet');
INSERT INTO Household(household_id,household_name) VALUES (13,'Stronghold');
INSERT INTO Household(household_id,household_name) VALUES (14,'Sub-Ex');
INSERT INTO Household(household_id,household_name) VALUES (15,'Regrant');
INSERT INTO Household(household_id,household_name) VALUES (16,'Home Ing');
INSERT INTO Household(household_id,household_name) VALUES (17,'Redhold');
INSERT INTO Household(household_id,household_name) VALUES (18,'Fintone');
INSERT INTO Household(household_id,household_name) VALUES (19,'Asoka');
INSERT INTO Household(household_id,household_name) VALUES (20,'Solarbreeze');

-- -------------------------------
-- create table for User Household
-- -------------------------------
CREATE TABLE IF NOT EXISTS User_Household (
    user_id INT NOT NULL,
    household_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (household_id) REFERENCES Household(household_id)
);

-- -------------------------------
-- add sample data for User Household
-- -------------------------------

INSERT INTO User_Household(user_id,household_id) VALUES (43,15);
INSERT INTO User_Household(user_id,household_id) VALUES (66,16);
INSERT INTO User_Household(user_id,household_id) VALUES (18,14);
INSERT INTO User_Household(user_id,household_id) VALUES (36,13);
INSERT INTO User_Household(user_id,household_id) VALUES (2,3);
INSERT INTO User_Household(user_id,household_id) VALUES (52,5);
INSERT INTO User_Household(user_id,household_id) VALUES (46,20);
INSERT INTO User_Household(user_id,household_id) VALUES (41,1);
INSERT INTO User_Household(user_id,household_id) VALUES (19,16);
INSERT INTO User_Household(user_id,household_id) VALUES (45,15);
INSERT INTO User_Household(user_id,household_id) VALUES (63,10);
INSERT INTO User_Household(user_id,household_id) VALUES (3,19);
INSERT INTO User_Household(user_id,household_id) VALUES (1,2);
INSERT INTO User_Household(user_id,household_id) VALUES (67,1);
INSERT INTO User_Household(user_id,household_id) VALUES (20,15);
INSERT INTO User_Household(user_id,household_id) VALUES (58,18);
INSERT INTO User_Household(user_id,household_id) VALUES (5,2);
INSERT INTO User_Household(user_id,household_id) VALUES (61,4);
INSERT INTO User_Household(user_id,household_id) VALUES (53,14);
INSERT INTO User_Household(user_id,household_id) VALUES (32,11);
INSERT INTO User_Household(user_id,household_id) VALUES (70,20);
INSERT INTO User_Household(user_id,household_id) VALUES (42,8);
INSERT INTO User_Household(user_id,household_id) VALUES (35,3);
INSERT INTO User_Household(user_id,household_id) VALUES (56,17);
INSERT INTO User_Household(user_id,household_id) VALUES (35,6);
INSERT INTO User_Household(user_id,household_id) VALUES (48,8);
INSERT INTO User_Household(user_id,household_id) VALUES (33,4);
INSERT INTO User_Household(user_id,household_id) VALUES (14,1);
INSERT INTO User_Household(user_id,household_id) VALUES (1,6);
INSERT INTO User_Household(user_id,household_id) VALUES (22,16);
INSERT INTO User_Household(user_id,household_id) VALUES (19,20);
INSERT INTO User_Household(user_id,household_id) VALUES (51,10);
INSERT INTO User_Household(user_id,household_id) VALUES (38,9);
INSERT INTO User_Household(user_id,household_id) VALUES (31,16);
INSERT INTO User_Household(user_id,household_id) VALUES (30,14);
INSERT INTO User_Household(user_id,household_id) VALUES (41,4);
INSERT INTO User_Household(user_id,household_id) VALUES (53,1);
INSERT INTO User_Household(user_id,household_id) VALUES (43,8);
INSERT INTO User_Household(user_id,household_id) VALUES (14,20);
INSERT INTO User_Household(user_id,household_id) VALUES (43,5);
INSERT INTO User_Household(user_id,household_id) VALUES (55,16);
INSERT INTO User_Household(user_id,household_id) VALUES (66,4);
INSERT INTO User_Household(user_id,household_id) VALUES (63,1);
INSERT INTO User_Household(user_id,household_id) VALUES (17,19);
INSERT INTO User_Household(user_id,household_id) VALUES (52,9);
INSERT INTO User_Household(user_id,household_id) VALUES (31,2);
INSERT INTO User_Household(user_id,household_id) VALUES (24,11);
INSERT INTO User_Household(user_id,household_id) VALUES (7,13);
INSERT INTO User_Household(user_id,household_id) VALUES (37,15);
INSERT INTO User_Household(user_id,household_id) VALUES (54,14);

-- -----------------------------
-- create table for Category
-- -----------------------------
CREATE TABLE IF NOT EXISTS Category (
    category_id INT NOT NULL AUTO_INCREMENT,
    category_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (category_id)
);

-- -----------------------------
-- add sample data for Category
-- -----------------------------

INSERT INTO Category(category_id,category_name) VALUES (1,'meat');
INSERT INTO Category(category_id,category_name) VALUES (2,'dairy');
INSERT INTO Category(category_id,category_name) VALUES (3,'vegetable');
INSERT INTO Category(category_id,category_name) VALUES (4,'fruit');
INSERT INTO Category(category_id,category_name) VALUES (5,'grain');

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
-- add sample data for Grocery List
-- -----------------------------

INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (1,'Deerdre',52,11);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (2,'Hersch',35,13);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (3,'Marsha',14,1);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (4,'Jilly',48,10);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (5,'Bentlee',36,15);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (6,'Demetria',31,2);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (7,'Bathsheba',67,19);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (8,'Cami',3,2);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (9,'Babita',33,3);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (10,'Tine',50,9);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (11,'Bertie',70,16);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (12,'Ursola',59,19);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (13,'Bobbye',30,1);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (14,'Norma',6,13);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (15,'Abby',58,18);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (16,'Shanna',62,10);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (17,'Chrisy',34,9);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (18,'Arline',9,14);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (19,'Janet',62,16);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (20,'Dionisio',15,18);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (21,'Angelika',12,5);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (22,'Grazia',64,4);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (23,'Reinaldos',25,5);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (24,'Cal',30,20);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (25,'Dorolisa',38,3);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (26,'Kip',53,11);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (27,'Vernor',70,17);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (28,'Fabien',3,18);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (29,'Cal',21,17);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (30,'Lucias',35,2);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (31,'Abdul',20,20);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (32,'Dulci',43,8);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (33,'Chloris',67,3);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (34,'Harmonie',6,11);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (35,'Perle',42,12);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (36,'Olympie',46,4);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (37,'Aila',1,16);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (38,'Coreen',46,9);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (39,'Marena',69,14);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (40,'Ag',30,6);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (41,'Mano',21,20);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (42,'Andrei',70,10);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (43,'David',51,1);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (44,'Rowan',67,11);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (45,'Katrina',7,15);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (46,'Juanita',45,18);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (47,'Linnet',25,2);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (48,'Faun',26,16);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (49,'Constanta',9,3);
INSERT INTO Grocery_List(list_id,list_name,user_id,household_id) VALUES (50,'Lavena',20,8);

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
-- add sample data for Food
-- -----------------------------

INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (1,12,'Lamb - Whole, Fresh',1,48.92);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (2,26,'Syrup - Kahlua Chocolate',2,39.95);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (3,14,'Wine - Chenin Blanc K.w.v.',3,39.49);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (4,36,'Crab - Meat Combo',4,38.88);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (5,39,'Cookies - Englishbay Oatmeal',5,8.33);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (6,34,'Carrots - Mini Red Organic',1,15.9);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (7,10,'Petite Baguette',2,13.28);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (8,12,'Chicken Breast Halal',4,48.18);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (9,47,'Bread Cranberry Foccacia',3,2.66);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (10,30,'Wine - White, Mosel Gold',1,15.14);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (11,22,'Table Cloth 54x54 Colour',5,17.93);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (12,29,'Chicken Breast Halal',2,4.99);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (13,27,'Steamers White',1,21.56);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (14,9,'Coconut Milk - Unsweetened',2,36.91);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (15,4,'Wine - Chateau Aqueria Tavel',4,39.31);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (16,47,'Lettuce - Belgian Endive',5,32.91);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (17,49,'Island Oasis - Ice Cream Mix',3,2.92);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (18,18,'Breadfruit',4,22.09);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (19,8,'Blackberries',5,15.28);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (20,14,'Pickerel - Fillets',2,15.92);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (21,37,'Oneshot Automatic Soap System',3,29.08);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (22,47,'Turkey - Breast, Double',2,21.4);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (23,36,'Rice - Sushi',4,6.48);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (24,16,'Croissant, Raw - Mini',1,11.97);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (25,40,'Crab - Claws, 26 - 30',1,24.19);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (26,46,'Appetizer - Assorted Box',5,20.59);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (27,26,'Bacardi Raspberry',3,38.16);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (28,24,'Garlic - Primerba, Paste',4,13.48);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (29,28,'Baking Powder',2,15.36);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (30,5,'Versatainer Nc - 9388',5,4.16);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (31,14,'Beans - Kidney White',4,1.36);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (32,1,'Mcgillicuddy Vanilla Schnap',1,25.3);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (33,21,'Snapple Raspberry Tea',2,33.2);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (34,25,'Spice - Pepper Portions',4,11.41);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (35,29,'Apple - Northern Spy',1,44.93);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (36,37,'Beets',5,27.01);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (37,8,'Praline Paste',1,40.89);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (38,20,'Venison - Racks Frenched',2,1.42);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (39,40,'Sprite, Diet - 355ml',4,22.25);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (40,26,'Wine - Beaujolais Villages',5,20.4);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (41,41,'Coffee - French Vanilla Frothy',1,20.36);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (42,17,'Veal - Brisket, Provimi, Bone - In',2,6.55);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (43,39,'Chocolate Eclairs',4,12.0);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (44,5,'Parsley - Fresh',3,3.55);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (45,18,'Sauce - Bernaise, Mix',4,47.39);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (46,36,'Sugar - Invert',3,46.01);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (47,27,'Ketchup - Tomato',2,4.8);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (48,6,'Glass Clear 7 Oz Xl',5,18.89);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (49,16,'Calypso - Strawberry Lemonade',2,45.19);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (50,4,'Kellogs Special K Cereal',1,25.32);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (51,39,'Lettuce - Romaine, Heart',5,48.83);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (52,27,'Oranges - Navel, 72',4,23.11);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (53,7,'Fondant - Icing',3,45.57);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (54,16,'Cheese - Bocconcini',5,46.2);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (55,4,'Pasta - Fettuccine, Dry',1,4.07);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (56,43,'Potatoes - Mini Red',2,23.14);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (57,25,'Yeast Dry - Fermipan',2,36.15);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (58,37,'Potato - Sweet',3,27.58);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (59,18,'Ham - Proscuitto',5,8.17);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (60,4,'Wine - Spumante Bambino White',4,14.49);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (61,43,'Muffin Mix - Chocolate Chip',2,32.98);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (62,32,'Wine - Barbera Alba Doc 2001',5,32.96);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (63,26,'Pasta - Bauletti, Chicken White',1,46.73);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (64,48,'True - Vue Containers',3,25.01);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (65,17,'Cheese - Montery Jack',3,24.6);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (66,43,'Wine - Cotes Du Rhone Parallele',4,24.84);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (67,37,'Dc Hikiage Hira Huba',5,28.4);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (68,11,'Mushroom - Chantrelle, Fresh',2,44.04);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (69,35,'Potatoes - Yukon Gold, 80 Ct',3,33.73);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (70,19,'Dc - Sakura Fu',1,17.58);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (71,47,'Shark - Loin',5,33.06);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (72,48,'Snapple - Iced Tea Peach',4,1.33);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (73,39,'Pumpkin',5,44.77);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (74,12,'Pasta - Fusili, Dry',4,30.27);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (75,28,'Tart Shells - Sweet, 4',2,12.01);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (76,1,'Dr. Pepper - 355ml',3,37.38);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (77,44,'Wine - Rosso Del Veronese Igt',2,46.17);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (78,13,'Mix - Cocktail Ice Cream',1,3.32);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (79,38,'Pastry - Banana Tea Loaf',4,17.71);
INSERT INTO Food(food_id,list_id,food_name,category_id,cost) VALUES (80,26,'Bonito Flakes - Toku Katsuo',5,41.19);

-- -----------------------------
-- create table for Recipes
-- -----------------------------
CREATE TABLE IF NOT EXISTS Recipes (
    recipe_id INT NOT NULL AUTO_INCREMENT,
    recipe_name VARCHAR(50),
    PRIMARY KEY (recipe_id)
);

-- -----------------------------
-- add sample data for Recipes
-- -----------------------------

INSERT INTO Recipes(recipe_id,recipe_name) VALUES (1,'recipe1');
INSERT INTO Recipes(recipe_id,recipe_name) VALUES (2,'recipe2');
INSERT INTO Recipes(recipe_id,recipe_name) VALUES (3,'recipe3');
INSERT INTO Recipes(recipe_id,recipe_name) VALUES (4,'recipe4');
INSERT INTO Recipes(recipe_id,recipe_name) VALUES (5,'recipe5');
INSERT INTO Recipes(recipe_id,recipe_name) VALUES (6,'recipe6');
INSERT INTO Recipes(recipe_id,recipe_name) VALUES (7,'recipe7');
INSERT INTO Recipes(recipe_id,recipe_name) VALUES (8,'recipe8');
INSERT INTO Recipes(recipe_id,recipe_name) VALUES (9,'recipe9');
INSERT INTO Recipes(recipe_id,recipe_name) VALUES (10,'recipe10');
INSERT INTO Recipes(recipe_id,recipe_name) VALUES (11,'recipe11');
INSERT INTO Recipes(recipe_id,recipe_name) VALUES (12,'recipe12');
INSERT INTO Recipes(recipe_id,recipe_name) VALUES (13,'recipe13');
INSERT INTO Recipes(recipe_id,recipe_name) VALUES (14,'recipe14');
INSERT INTO Recipes(recipe_id,recipe_name) VALUES (15,'recipe15');
INSERT INTO Recipes(recipe_id,recipe_name) VALUES (16,'recipe16');
INSERT INTO Recipes(recipe_id,recipe_name) VALUES (17,'recipe17');
INSERT INTO Recipes(recipe_id,recipe_name) VALUES (18,'recipe18');
INSERT INTO Recipes(recipe_id,recipe_name) VALUES (19,'recipe19');
INSERT INTO Recipes(recipe_id,recipe_name) VALUES (20,'recipe20');
INSERT INTO Recipes(recipe_id,recipe_name) VALUES (21,'recipe21');
INSERT INTO Recipes(recipe_id,recipe_name) VALUES (22,'recipe22');
INSERT INTO Recipes(recipe_id,recipe_name) VALUES (23,'recipe23');
INSERT INTO Recipes(recipe_id,recipe_name) VALUES (24,'recipe24');
INSERT INTO Recipes(recipe_id,recipe_name) VALUES (25,'recipe25');
INSERT INTO Recipes(recipe_id,recipe_name) VALUES (26,'recipe26');
INSERT INTO Recipes(recipe_id,recipe_name) VALUES (27,'recipe27');
INSERT INTO Recipes(recipe_id,recipe_name) VALUES (28,'recipe28');
INSERT INTO Recipes(recipe_id,recipe_name) VALUES (29,'recipe29');
INSERT INTO Recipes(recipe_id,recipe_name) VALUES (30,'recipe30');

-- ---------------------------------
-- create table for Recipe Food
-- ---------------------------------
CREATE TABLE IF NOT EXISTS Recipe_Food (
    recipe_id INT NOT NULL,
    food_id INT NOT NULL,
    FOREIGN KEY (recipe_id)
        REFERENCES Recipes(recipe_id),
    FOREIGN KEY (food_id)
        REFERENCES Food(food_id)
);

-- ---------------------------------
-- add sample data for Recipe Food
-- ---------------------------------

INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (22,7);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (30,14);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (2,6);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (24,3);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (18,32);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (8,64);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (13,2);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (13,79);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (7,42);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (27,11);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (28,70);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (24,51);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (26,40);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (30,69);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (19,16);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (29,80);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (13,29);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (26,37);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (11,5);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (22,10);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (9,54);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (17,3);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (14,29);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (3,65);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (10,54);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (26,75);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (13,11);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (23,20);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (11,37);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (24,54);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (5,19);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (6,57);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (29,21);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (16,25);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (15,39);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (5,42);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (28,38);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (9,3);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (13,27);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (22,7);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (20,5);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (21,43);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (4,36);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (5,70);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (20,75);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (8,45);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (29,31);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (1,9);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (26,12);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (8,57);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (15,76);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (22,52);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (14,18);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (2,68);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (24,27);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (12,17);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (10,66);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (2,14);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (4,34);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (6,24);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (1,6);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (17,64);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (25,69);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (19,6);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (28,53);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (26,21);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (25,31);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (17,76);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (13,12);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (9,2);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (27,56);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (17,38);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (26,30);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (1,9);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (8,42);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (10,28);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (30,15);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (9,34);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (24,41);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (13,77);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (26,70);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (11,18);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (5,17);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (22,1);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (20,23);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (13,5);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (17,34);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (10,49);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (6,31);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (25,45);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (23,53);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (24,66);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (15,42);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (10,62);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (26,53);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (8,17);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (20,63);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (4,6);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (23,25);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (16,60);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (11,7);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (8,41);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (27,59);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (30,73);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (10,2);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (18,37);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (26,46);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (23,47);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (11,13);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (1,16);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (22,15);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (6,20);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (14,6);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (13,17);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (24,13);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (26,1);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (25,80);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (3,77);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (27,9);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (21,51);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (27,44);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (3,37);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (15,52);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (1,17);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (12,22);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (4,12);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (22,47);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (1,30);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (18,52);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (6,57);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (7,17);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (19,65);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (26,35);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (23,66);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (2,38);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (10,52);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (25,62);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (5,40);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (11,55);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (26,48);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (24,69);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (15,37);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (14,32);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (20,42);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (18,14);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (16,3);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (21,4);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (4,33);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (9,34);
INSERT INTO Recipe_Food(recipe_id,food_id) VALUES (8,59);

-- -----------------------------
-- create table for Fridge
-- -----------------------------
CREATE TABLE IF NOT EXISTS Fridge (
    fridge_id INT NOT NULL AUTO_INCREMENT,
    fridge_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (fridge_id)
);

-- -----------------------------
-- add sample data for Fridge
-- -----------------------------

INSERT INTO Fridge(fridge_id,fridge_name) VALUES (1,'fridge1');
INSERT INTO Fridge(fridge_id,fridge_name) VALUES (2,'fridge2');
INSERT INTO Fridge(fridge_id,fridge_name) VALUES (3,'fridge3');
INSERT INTO Fridge(fridge_id,fridge_name) VALUES (4,'fridge4');
INSERT INTO Fridge(fridge_id,fridge_name) VALUES (5,'fridge5');
INSERT INTO Fridge(fridge_id,fridge_name) VALUES (6,'fridge6');
INSERT INTO Fridge(fridge_id,fridge_name) VALUES (7,'fridge7');
INSERT INTO Fridge(fridge_id,fridge_name) VALUES (8,'fridge8');
INSERT INTO Fridge(fridge_id,fridge_name) VALUES (9,'fridge9');
INSERT INTO Fridge(fridge_id,fridge_name) VALUES (10,'fridge10');
INSERT INTO Fridge(fridge_id,fridge_name) VALUES (11,'fridge11');
INSERT INTO Fridge(fridge_id,fridge_name) VALUES (12,'fridge12');
INSERT INTO Fridge(fridge_id,fridge_name) VALUES (13,'fridge13');
INSERT INTO Fridge(fridge_id,fridge_name) VALUES (14,'fridge14');
INSERT INTO Fridge(fridge_id,fridge_name) VALUES (15,'fridge15');
INSERT INTO Fridge(fridge_id,fridge_name) VALUES (16,'fridge16');
INSERT INTO Fridge(fridge_id,fridge_name) VALUES (17,'fridge17');
INSERT INTO Fridge(fridge_id,fridge_name) VALUES (18,'fridge18');
INSERT INTO Fridge(fridge_id,fridge_name) VALUES (19,'fridge19');
INSERT INTO Fridge(fridge_id,fridge_name) VALUES (20,'fridge20');
INSERT INTO Fridge(fridge_id,fridge_name) VALUES (21,'fridge21');
INSERT INTO Fridge(fridge_id,fridge_name) VALUES (22,'fridge22');
INSERT INTO Fridge(fridge_id,fridge_name) VALUES (23,'fridge23');
INSERT INTO Fridge(fridge_id,fridge_name) VALUES (24,'fridge24');
INSERT INTO Fridge(fridge_id,fridge_name) VALUES (25,'fridge25');
INSERT INTO Fridge(fridge_id,fridge_name) VALUES (26,'fridge26');
INSERT INTO Fridge(fridge_id,fridge_name) VALUES (27,'fridge27');
INSERT INTO Fridge(fridge_id,fridge_name) VALUES (28,'fridge28');
INSERT INTO Fridge(fridge_id,fridge_name) VALUES (29,'fridge29');
INSERT INTO Fridge(fridge_id,fridge_name) VALUES (30,'fridge30');

-- --------------------------------
-- create table for Household Fridge
-- --------------------------------
CREATE TABLE IF NOT EXISTS Household_Fridge (
    household_id INT NOT NULL,
    fridge_id INT NOT NULL,
    FOREIGN KEY (household_id)
        REFERENCES Household(household_id),
    FOREIGN KEY (fridge_id)
        REFERENCES Fridge(fridge_id)
);

-- --------------------------------
-- add sample data for Household Fridge
-- --------------------------------

INSERT INTO Household_Fridge(household_id,fridge_id) VALUES (17,1);
INSERT INTO Household_Fridge(household_id,fridge_id) VALUES (7,2);
INSERT INTO Household_Fridge(household_id,fridge_id) VALUES (8,3);
INSERT INTO Household_Fridge(household_id,fridge_id) VALUES (20,4);
INSERT INTO Household_Fridge(household_id,fridge_id) VALUES (5,5);
INSERT INTO Household_Fridge(household_id,fridge_id) VALUES (10,6);
INSERT INTO Household_Fridge(household_id,fridge_id) VALUES (11,7);
INSERT INTO Household_Fridge(household_id,fridge_id) VALUES (7,8);
INSERT INTO Household_Fridge(household_id,fridge_id) VALUES (8,9);
INSERT INTO Household_Fridge(household_id,fridge_id) VALUES (1,10);
INSERT INTO Household_Fridge(household_id,fridge_id) VALUES (10,11);
INSERT INTO Household_Fridge(household_id,fridge_id) VALUES (19,12);
INSERT INTO Household_Fridge(household_id,fridge_id) VALUES (4,13);
INSERT INTO Household_Fridge(household_id,fridge_id) VALUES (6,14);
INSERT INTO Household_Fridge(household_id,fridge_id) VALUES (8,15);
INSERT INTO Household_Fridge(household_id,fridge_id) VALUES (5,16);
INSERT INTO Household_Fridge(household_id,fridge_id) VALUES (15,17);
INSERT INTO Household_Fridge(household_id,fridge_id) VALUES (11,18);
INSERT INTO Household_Fridge(household_id,fridge_id) VALUES (2,19);
INSERT INTO Household_Fridge(household_id,fridge_id) VALUES (17,20);
INSERT INTO Household_Fridge(household_id,fridge_id) VALUES (3,21);
INSERT INTO Household_Fridge(household_id,fridge_id) VALUES (8,22);
INSERT INTO Household_Fridge(household_id,fridge_id) VALUES (15,23);
INSERT INTO Household_Fridge(household_id,fridge_id) VALUES (7,24);
INSERT INTO Household_Fridge(household_id,fridge_id) VALUES (12,25);
INSERT INTO Household_Fridge(household_id,fridge_id) VALUES (4,26);
INSERT INTO Household_Fridge(household_id,fridge_id) VALUES (9,27);
INSERT INTO Household_Fridge(household_id,fridge_id) VALUES (1,28);
INSERT INTO Household_Fridge(household_id,fridge_id) VALUES (16,29);
INSERT INTO Household_Fridge(household_id,fridge_id) VALUES (11,30);

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
-- add sample data for Location
-- -----------------------------

INSERT INTO Location(location_id,fridge_id) VALUES (1,2);
INSERT INTO Location(location_id,fridge_id) VALUES (2,30);
INSERT INTO Location(location_id,fridge_id) VALUES (3,25);
INSERT INTO Location(location_id,fridge_id) VALUES (4,24);
INSERT INTO Location(location_id,fridge_id) VALUES (5,11);
INSERT INTO Location(location_id,fridge_id) VALUES (6,8);
INSERT INTO Location(location_id,fridge_id) VALUES (7,12);
INSERT INTO Location(location_id,fridge_id) VALUES (8,10);
INSERT INTO Location(location_id,fridge_id) VALUES (9,29);
INSERT INTO Location(location_id,fridge_id) VALUES (10,3);
INSERT INTO Location(location_id,fridge_id) VALUES (11,9);
INSERT INTO Location(location_id,fridge_id) VALUES (12,20);
INSERT INTO Location(location_id,fridge_id) VALUES (13,21);
INSERT INTO Location(location_id,fridge_id) VALUES (14,19);
INSERT INTO Location(location_id,fridge_id) VALUES (15,1);
INSERT INTO Location(location_id,fridge_id) VALUES (16,2);
INSERT INTO Location(location_id,fridge_id) VALUES (17,11);
INSERT INTO Location(location_id,fridge_id) VALUES (18,18);
INSERT INTO Location(location_id,fridge_id) VALUES (19,23);
INSERT INTO Location(location_id,fridge_id) VALUES (20,8);
INSERT INTO Location(location_id,fridge_id) VALUES (21,16);
INSERT INTO Location(location_id,fridge_id) VALUES (22,7);
INSERT INTO Location(location_id,fridge_id) VALUES (23,10);
INSERT INTO Location(location_id,fridge_id) VALUES (24,17);
INSERT INTO Location(location_id,fridge_id) VALUES (25,8);
INSERT INTO Location(location_id,fridge_id) VALUES (26,4);
INSERT INTO Location(location_id,fridge_id) VALUES (27,20);
INSERT INTO Location(location_id,fridge_id) VALUES (28,14);
INSERT INTO Location(location_id,fridge_id) VALUES (29,25);
INSERT INTO Location(location_id,fridge_id) VALUES (30,21);
INSERT INTO Location(location_id,fridge_id) VALUES (31,17);
INSERT INTO Location(location_id,fridge_id) VALUES (32,7);
INSERT INTO Location(location_id,fridge_id) VALUES (33,1);
INSERT INTO Location(location_id,fridge_id) VALUES (34,10);
INSERT INTO Location(location_id,fridge_id) VALUES (35,3);
INSERT INTO Location(location_id,fridge_id) VALUES (36,6);
INSERT INTO Location(location_id,fridge_id) VALUES (37,4);
INSERT INTO Location(location_id,fridge_id) VALUES (38,26);
INSERT INTO Location(location_id,fridge_id) VALUES (39,8);
INSERT INTO Location(location_id,fridge_id) VALUES (40,13);
INSERT INTO Location(location_id,fridge_id) VALUES (41,5);
INSERT INTO Location(location_id,fridge_id) VALUES (42,10);
INSERT INTO Location(location_id,fridge_id) VALUES (43,3);
INSERT INTO Location(location_id,fridge_id) VALUES (44,22);
INSERT INTO Location(location_id,fridge_id) VALUES (45,28);
INSERT INTO Location(location_id,fridge_id) VALUES (46,9);
INSERT INTO Location(location_id,fridge_id) VALUES (47,2);
INSERT INTO Location(location_id,fridge_id) VALUES (48,7);
INSERT INTO Location(location_id,fridge_id) VALUES (49,12);
INSERT INTO Location(location_id,fridge_id) VALUES (50,19);
INSERT INTO Location(location_id,fridge_id) VALUES (51,10);
INSERT INTO Location(location_id,fridge_id) VALUES (52,23);
INSERT INTO Location(location_id,fridge_id) VALUES (53,25);
INSERT INTO Location(location_id,fridge_id) VALUES (54,20);
INSERT INTO Location(location_id,fridge_id) VALUES (55,12);
INSERT INTO Location(location_id,fridge_id) VALUES (56,2);
INSERT INTO Location(location_id,fridge_id) VALUES (57,24);
INSERT INTO Location(location_id,fridge_id) VALUES (58,17);
INSERT INTO Location(location_id,fridge_id) VALUES (59,11);
INSERT INTO Location(location_id,fridge_id) VALUES (60,3);
INSERT INTO Location(location_id,fridge_id) VALUES (61,23);
INSERT INTO Location(location_id,fridge_id) VALUES (62,15);
INSERT INTO Location(location_id,fridge_id) VALUES (63,12);
INSERT INTO Location(location_id,fridge_id) VALUES (64,4);
INSERT INTO Location(location_id,fridge_id) VALUES (65,13);
INSERT INTO Location(location_id,fridge_id) VALUES (66,12);
INSERT INTO Location(location_id,fridge_id) VALUES (67,23);
INSERT INTO Location(location_id,fridge_id) VALUES (68,28);
INSERT INTO Location(location_id,fridge_id) VALUES (69,2);
INSERT INTO Location(location_id,fridge_id) VALUES (70,27);
INSERT INTO Location(location_id,fridge_id) VALUES (71,13);
INSERT INTO Location(location_id,fridge_id) VALUES (72,7);
INSERT INTO Location(location_id,fridge_id) VALUES (73,1);
INSERT INTO Location(location_id,fridge_id) VALUES (74,5);
INSERT INTO Location(location_id,fridge_id) VALUES (75,10);
INSERT INTO Location(location_id,fridge_id) VALUES (76,12);
INSERT INTO Location(location_id,fridge_id) VALUES (77,29);
INSERT INTO Location(location_id,fridge_id) VALUES (78,9);
INSERT INTO Location(location_id,fridge_id) VALUES (79,11);
INSERT INTO Location(location_id,fridge_id) VALUES (80,18);
INSERT INTO Location(location_id,fridge_id) VALUES (81,19);
INSERT INTO Location(location_id,fridge_id) VALUES (82,7);
INSERT INTO Location(location_id,fridge_id) VALUES (83,4);
INSERT INTO Location(location_id,fridge_id) VALUES (84,30);
INSERT INTO Location(location_id,fridge_id) VALUES (85,27);
INSERT INTO Location(location_id,fridge_id) VALUES (86,5);
INSERT INTO Location(location_id,fridge_id) VALUES (87,18);
INSERT INTO Location(location_id,fridge_id) VALUES (88,28);
INSERT INTO Location(location_id,fridge_id) VALUES (89,13);
INSERT INTO Location(location_id,fridge_id) VALUES (90,15);
INSERT INTO Location(location_id,fridge_id) VALUES (91,4);
INSERT INTO Location(location_id,fridge_id) VALUES (92,13);
INSERT INTO Location(location_id,fridge_id) VALUES (93,9);
INSERT INTO Location(location_id,fridge_id) VALUES (94,11);
INSERT INTO Location(location_id,fridge_id) VALUES (95,7);
INSERT INTO Location(location_id,fridge_id) VALUES (96,7);
INSERT INTO Location(location_id,fridge_id) VALUES (97,16);
INSERT INTO Location(location_id,fridge_id) VALUES (98,13);
INSERT INTO Location(location_id,fridge_id) VALUES (99,30);
INSERT INTO Location(location_id,fridge_id) VALUES (100,10);

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
-- add sample data for User Food
-- -----------------------------

INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (17,44,0,'2022-11-26','2022-04-26',39,15);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (64,34,0,'2022-08-01','2022-06-19',9,11);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (18,5,0,'2022-05-29','2022-06-01',46,2);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (61,47,0,'2022-11-01','2023-02-20',6,10);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (8,36,0,'2022-07-19','2022-12-23',15,2);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (10,66,1,'2022-06-17','2022-10-08',37,9);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (1,23,0,'2022-05-01','2022-10-31',60,3);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (5,33,0,'2023-03-11','2022-05-22',75,14);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (70,78,1,'2022-09-13','2022-11-18',95,16);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (24,64,1,'2023-01-08','2022-05-03',85,19);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (66,76,0,'2022-12-05','2022-10-12',84,16);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (39,12,1,'2022-11-26','2023-01-10',86,9);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (45,20,1,'2022-08-11','2022-07-01',1,2);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (37,58,1,'2023-04-17','2022-12-30',32,10);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (30,4,1,'2022-07-06','2023-04-12',79,19);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (63,15,0,'2022-10-18','2022-08-03',77,2);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (68,40,0,'2022-06-11','2022-07-19',59,13);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (32,63,1,'2022-05-05','2023-02-01',80,12);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (43,46,0,'2023-03-10','2022-11-16',8,17);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (29,51,0,'2023-04-15','2022-08-15',32,3);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (58,38,1,'2022-05-27','2022-09-19',48,6);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (37,76,1,'2023-01-05','2022-06-19',52,5);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (8,28,0,'2022-09-20','2022-11-05',6,8);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (64,59,1,'2022-12-09','2022-08-14',27,4);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (19,45,1,'2023-01-14','2022-07-05',11,12);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (3,67,0,'2023-01-30','2022-04-27',34,17);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (49,22,0,'2022-08-17','2023-03-21',5,19);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (57,12,1,'2023-04-17','2022-09-25',91,1);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (25,69,0,'2023-01-18','2022-10-01',36,19);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (66,75,0,'2022-06-05','2022-07-17',63,5);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (8,31,0,'2023-02-04','2022-08-05',26,17);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (9,24,1,'2022-08-02','2022-08-02',88,4);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (50,26,0,'2022-07-10','2023-02-23',41,11);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (34,61,1,'2022-06-16','2022-11-30',39,5);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (44,50,0,'2022-12-29','2022-11-25',25,4);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (1,5,0,'2023-03-04','2023-01-24',34,18);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (67,51,1,'2023-02-02','2022-11-12',52,4);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (19,29,1,'2022-06-10','2022-11-18',100,13);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (58,6,1,'2022-08-18','2023-03-15',62,18);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (11,64,1,'2023-04-09','2022-05-16',58,11);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (6,18,1,'2022-06-28','2022-12-21',9,13);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (23,41,1,'2022-09-10','2022-04-23',29,11);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (57,56,1,'2022-05-05','2023-01-27',8,6);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (70,7,0,'2023-01-23','2022-09-16',46,9);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (62,3,0,'2022-07-29','2022-07-14',2,7);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (7,28,0,'2022-07-27','2022-12-01',17,12);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (67,54,0,'2022-08-18','2023-02-27',25,10);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (26,73,1,'2022-10-06','2022-05-30',72,17);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (23,34,1,'2022-06-12','2022-07-23',27,9);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (53,23,1,'2023-03-12','2022-10-09',37,4);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (39,10,0,'2023-02-05','2022-10-07',12,14);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (69,20,1,'2022-07-04','2022-06-02',24,11);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (62,7,0,'2023-03-01','2023-03-03',6,2);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (4,35,0,'2022-08-16','2022-09-23',74,11);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (48,32,0,'2022-07-06','2023-01-08',21,12);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (16,8,0,'2022-04-19','2022-12-06',33,14);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (34,40,1,'2022-07-10','2022-10-08',50,15);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (65,79,1,'2022-11-12','2023-01-07',53,18);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (21,61,0,'2022-10-27','2022-04-29',26,13);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (63,22,0,'2022-05-06','2022-12-23',71,8);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (40,4,1,'2022-06-13','2022-06-07',15,3);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (44,14,0,'2022-12-06','2022-12-21',17,9);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (47,17,1,'2022-09-18','2022-09-26',35,13);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (22,15,0,'2022-06-22','2022-10-20',85,17);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (30,30,0,'2022-09-17','2022-07-26',1,5);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (14,51,1,'2022-05-07','2023-03-13',37,2);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (52,79,0,'2022-10-13','2022-07-11',61,19);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (2,45,1,'2022-10-14','2022-07-20',51,2);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (53,9,0,'2022-08-13','2022-05-20',82,10);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (18,23,0,'2023-01-25','2022-09-06',44,5);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (69,22,1,'2022-08-25','2022-11-20',31,1);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (19,42,0,'2022-07-11','2022-12-28',47,16);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (46,48,1,'2022-10-30','2022-11-09',5,2);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (68,25,0,'2022-12-24','2023-01-25',99,9);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (64,57,1,'2022-04-28','2022-07-20',74,15);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (22,27,0,'2023-03-24','2022-06-07',80,16);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (31,54,0,'2022-06-27','2023-01-14',56,19);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (46,12,1,'2022-12-23','2022-08-19',96,9);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (1,46,1,'2022-09-08','2022-12-25',45,14);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (34,42,1,'2022-05-05','2022-12-29',74,14);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (32,33,0,'2023-01-19','2022-08-31',93,3);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (27,58,1,'2023-02-08','2022-06-09',1,12);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (36,63,0,'2022-08-03','2022-11-01',17,8);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (24,43,1,'2022-09-29','2022-11-07',51,19);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (12,44,0,'2022-06-11','2023-03-12',62,5);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (15,6,0,'2022-11-25','2023-01-09',25,6);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (53,32,1,'2022-09-10','2022-06-20',63,3);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (19,47,1,'2022-06-23','2022-08-06',50,17);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (48,56,1,'2023-01-03','2023-02-08',34,8);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (6,20,0,'2022-12-19','2022-10-21',12,17);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (31,23,0,'2022-04-24','2022-08-16',15,16);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (42,61,1,'2023-04-13','2022-07-31',25,10);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (26,54,1,'2023-03-07','2022-05-05',83,19);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (70,64,1,'2022-09-03','2022-10-14',32,11);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (4,1,1,'2022-04-21','2022-09-13',90,6);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (52,79,1,'2023-02-18','2023-01-02',37,13);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (45,65,0,'2022-07-18','2022-04-27',45,5);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (39,28,0,'2022-07-30','2023-02-19',19,14);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (22,34,0,'2022-07-23','2022-06-11',67,5);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (30,4,0,'2022-09-16','2022-05-06',72,19);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (67,51,0,'2022-07-03','2023-02-06',55,8);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (18,75,0,'2022-11-02','2022-10-23',69,1);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (15,13,0,'2023-02-05','2022-10-29',88,5);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (16,47,1,'2022-05-31','2022-06-16',36,17);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (13,60,1,'2022-05-04','2022-11-21',54,8);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (42,32,1,'2022-04-27','2022-12-15',100,17);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (48,9,0,'2023-01-13','2022-07-10',46,1);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (39,18,0,'2022-08-15','2022-08-16',60,18);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (25,8,1,'2022-11-30','2022-06-24',18,4);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (41,29,1,'2022-06-10','2023-01-07',99,5);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (60,47,0,'2022-06-12','2023-01-16',33,18);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (26,63,0,'2022-07-07','2022-10-01',98,2);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (59,36,1,'2022-10-02','2022-10-10',88,17);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (27,71,1,'2023-01-24','2022-12-02',65,11);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (58,21,0,'2022-12-30','2022-10-25',68,6);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (46,43,1,'2022-11-09','2023-01-25',42,12);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (49,20,1,'2022-10-30','2023-04-08',31,6);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (32,13,0,'2022-10-16','2022-11-12',74,2);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (4,2,0,'2022-05-15','2023-02-26',58,1);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (23,55,1,'2023-03-12','2022-07-23',21,10);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (61,30,1,'2022-11-03','2022-10-26',23,10);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (54,44,0,'2023-01-08','2022-11-27',70,6);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (10,38,0,'2022-07-02','2022-11-20',35,14);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (52,29,0,'2022-10-18','2022-07-12',92,5);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (9,64,0,'2023-04-04','2022-06-24',36,7);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (70,45,0,'2022-12-02','2023-02-18',42,3);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (18,59,1,'2023-03-20','2023-02-13',60,8);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (2,52,1,'2023-02-26','2022-07-15',17,17);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (23,47,0,'2023-02-19','2022-08-24',39,8);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (15,4,1,'2023-02-22','2022-09-15',52,5);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (53,37,1,'2023-01-26','2023-03-20',96,18);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (37,5,1,'2023-02-12','2022-11-22',90,19);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (46,28,1,'2022-08-10','2022-05-12',83,14);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (36,16,1,'2022-10-01','2022-08-07',24,11);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (56,11,0,'2022-05-09','2023-01-03',30,6);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (50,32,0,'2022-06-28','2023-03-10',89,10);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (56,4,1,'2022-09-26','2022-12-22',71,7);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (5,64,1,'2023-01-07','2022-12-08',2,9);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (4,26,1,'2022-08-27','2022-06-02',44,6);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (18,52,1,'2023-03-22','2023-01-24',20,2);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (44,31,1,'2022-09-08','2023-01-14',11,18);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (1,29,0,'2023-01-14','2023-02-18',6,16);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (16,16,0,'2022-12-02','2022-05-02',66,16);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (52,65,0,'2022-04-21','2023-03-28',41,12);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (12,56,1,'2023-02-25','2023-02-23',3,10);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (17,25,1,'2023-03-15','2022-05-01',19,10);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (59,42,0,'2022-07-11','2023-03-05',29,17);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (40,49,0,'2022-08-30','2022-06-08',34,18);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (62,58,0,'2023-01-16','2023-04-11',87,1);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (51,78,0,'2022-07-05','2022-11-04',96,9);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (18,13,0,'2022-09-18','2022-09-03',92,17);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (60,67,1,'2023-01-12','2023-02-01',18,4);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (25,6,0,'2022-06-23','2022-12-04',52,18);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (48,58,0,'2022-10-14','2022-07-12',65,20);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (36,16,1,'2022-11-25','2022-11-04',36,14);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (70,30,1,'2023-03-27','2022-06-18',94,2);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (41,40,1,'2022-08-30','2023-02-23',35,13);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (10,75,1,'2022-12-16','2022-04-19',42,15);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (14,77,0,'2022-07-02','2022-05-09',49,2);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (8,9,1,'2023-01-02','2023-01-19',37,14);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (22,70,1,'2022-11-08','2022-12-06',88,3);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (30,66,0,'2022-06-06','2022-07-08',17,14);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (45,52,1,'2022-05-17','2022-10-17',41,14);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (65,38,0,'2022-06-28','2022-12-24',19,4);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (23,55,1,'2022-06-20','2022-12-31',55,1);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (12,10,1,'2022-04-24','2023-03-05',79,20);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (10,52,0,'2023-04-13','2022-09-28',1,8);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (7,78,1,'2023-03-19','2022-12-12',12,4);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (59,60,1,'2022-07-04','2022-09-08',38,15);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (8,45,0,'2022-04-25','2023-03-28',17,5);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (70,65,1,'2023-03-05','2022-05-08',8,3);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (24,36,1,'2022-05-16','2022-11-26',13,15);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (51,3,0,'2022-05-11','2022-11-29',95,16);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (22,42,0,'2022-05-27','2022-12-31',90,13);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (19,46,1,'2022-06-26','2022-12-08',86,20);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (6,53,0,'2022-04-21','2023-01-25',43,19);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (60,13,1,'2022-05-03','2022-11-20',4,6);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (62,61,0,'2022-06-23','2022-11-01',21,20);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (18,11,1,'2022-06-11','2022-11-26',97,9);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (38,66,0,'2022-11-22','2023-03-07',100,5);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (13,73,0,'2022-05-27','2023-01-21',41,20);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (57,21,0,'2022-07-24','2022-07-14',25,1);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (26,14,1,'2022-04-22','2023-01-20',53,16);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (19,70,1,'2022-07-20','2023-02-15',29,17);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (23,27,1,'2022-10-14','2023-01-22',55,12);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (1,79,1,'2022-05-27','2022-06-05',27,14);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (15,48,1,'2022-07-15','2022-11-13',21,6);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (67,11,0,'2022-12-11','2023-02-20',22,7);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (44,77,0,'2022-12-26','2023-03-19',3,16);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (49,31,1,'2022-07-10','2022-08-28',82,9);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (5,53,0,'2022-12-28','2022-07-04',19,13);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (35,37,0,'2022-08-09','2022-09-09',37,5);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (40,46,1,'2022-08-15','2023-01-20',86,1);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (61,6,1,'2022-09-13','2023-02-05',40,2);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (2,50,1,'2023-02-24','2023-03-10',46,19);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (40,79,0,'2022-12-18','2022-05-02',60,13);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (55,33,1,'2022-04-21','2022-04-24',12,8);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (64,69,1,'2022-07-18','2022-05-08',95,11);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (68,28,1,'2022-11-21','2023-01-09',58,19);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (22,4,0,'2023-03-12','2022-07-25',24,10);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (42,5,0,'2022-08-05','2023-03-15',87,9);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (69,15,1,'2022-07-12','2022-09-16',45,7);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (35,71,1,'2022-07-09','2022-10-07',7,4);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (32,78,1,'2022-07-24','2022-09-24',98,4);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (7,52,0,'2022-08-17','2023-02-13',84,20);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (46,49,1,'2023-04-10','2022-06-17',73,7);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (21,2,0,'2022-08-13','2022-11-16',61,18);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (41,75,0,'2022-08-31','2023-04-08',16,17);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (67,56,1,'2022-10-25','2022-11-15',89,17);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (12,53,1,'2022-08-29','2022-09-28',20,3);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (57,23,1,'2022-11-26','2022-10-30',50,12);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (7,15,0,'2022-08-19','2023-01-07',14,16);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (51,55,0,'2022-10-30','2023-03-21',31,16);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (38,62,0,'2022-06-19','2022-06-08',34,20);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (44,5,1,'2022-04-26','2023-01-28',23,10);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (16,70,0,'2022-07-27','2022-05-01',76,10);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (43,40,0,'2023-03-21','2022-12-09',56,4);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (66,52,1,'2022-04-28','2022-05-09',32,19);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (46,35,1,'2023-04-06','2022-04-26',47,18);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (50,24,1,'2022-11-25','2022-06-17',6,17);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (31,13,0,'2022-09-04','2023-04-18',78,7);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (34,48,1,'2023-04-17','2023-03-09',94,12);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (23,26,0,'2022-10-27','2023-03-15',88,13);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (2,7,1,'2023-03-16','2022-06-02',28,12);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (10,51,0,'2023-04-17','2022-05-24',100,19);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (41,55,0,'2022-07-11','2022-11-19',76,1);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (55,79,1,'2022-05-30','2023-01-08',90,9);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (69,54,1,'2022-07-02','2023-03-03',6,2);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (18,43,1,'2022-04-26','2022-08-02',25,6);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (12,60,0,'2022-12-05','2022-09-17',49,15);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (50,71,0,'2022-12-28','2022-12-06',86,8);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (15,3,1,'2022-10-04','2022-10-02',59,18);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (39,1,0,'2022-09-27','2022-12-12',38,14);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (23,22,1,'2023-03-08','2022-10-24',33,18);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (35,23,0,'2022-07-22','2023-03-20',72,2);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (60,56,0,'2022-07-28','2022-07-18',53,13);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (44,15,0,'2022-11-23','2022-07-02',88,16);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (54,49,0,'2023-02-12','2022-12-03',98,12);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (65,62,1,'2022-04-25','2022-12-30',95,14);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (48,29,1,'2022-12-03','2023-01-08',93,4);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (17,53,1,'2022-10-28','2023-01-07',52,15);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (64,32,1,'2022-05-21','2023-02-26',77,6);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (67,40,0,'2022-06-18','2023-03-05',89,12);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (4,55,1,'2022-07-09','2023-03-09',29,12);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (52,49,0,'2022-05-26','2022-07-19',73,10);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (66,70,1,'2022-12-24','2022-04-26',71,20);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (9,65,1,'2022-12-22','2023-01-19',82,18);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (65,68,0,'2022-09-28','2023-02-18',24,1);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (36,5,1,'2022-05-29','2022-08-01',40,19);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (34,2,1,'2022-07-03','2022-12-04',47,11);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (13,74,0,'2022-06-25','2022-07-31',72,2);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (3,47,0,'2022-09-17','2022-07-30',48,1);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (51,38,0,'2022-11-16','2022-04-19',86,11);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (19,46,1,'2022-06-10','2022-12-01',61,3);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (31,33,0,'2022-08-24','2023-03-26',19,12);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (18,19,0,'2022-08-08','2023-02-25',52,15);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (48,18,0,'2022-06-30','2022-06-13',89,7);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (42,50,1,'2022-05-22','2022-12-10',48,5);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (11,2,0,'2023-03-10','2022-06-17',4,8);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (64,79,0,'2022-06-03','2023-03-12',15,3);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (25,58,1,'2022-07-22','2022-12-27',93,9);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (53,43,1,'2022-08-06','2022-10-16',66,6);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (43,30,1,'2022-11-06','2022-10-16',11,2);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (68,56,1,'2022-10-27','2023-01-04',79,14);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (3,5,0,'2022-04-27','2022-08-03',23,19);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (60,23,0,'2022-07-17','2023-01-10',83,8);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (69,70,1,'2023-04-05','2022-10-30',36,20);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (70,22,1,'2022-10-11','2023-04-07',87,13);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (47,78,0,'2022-05-29','2022-08-09',85,16);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (67,12,0,'2022-06-17','2022-06-20',16,17);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (16,19,0,'2022-07-09','2022-12-03',78,15);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (14,13,1,'2022-11-13','2022-07-16',49,2);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (36,72,0,'2022-06-09','2022-10-16',62,12);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (28,77,1,'2022-10-21','2022-11-11',35,7);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (61,66,0,'2022-10-29','2022-05-16',67,7);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (23,44,1,'2022-12-13','2022-12-10',58,4);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (39,21,0,'2022-12-14','2022-10-27',87,15);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (56,35,0,'2022-07-09','2022-12-21',71,3);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (54,37,1,'2023-01-17','2022-11-12',93,18);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (4,17,1,'2022-11-23','2023-03-21',1,9);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (12,43,1,'2022-09-23','2022-08-24',98,6);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (50,71,1,'2023-02-09','2022-09-07',82,7);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (15,42,1,'2023-04-01','2022-05-10',42,16);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (5,40,1,'2022-04-23','2022-09-05',74,5);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (26,16,0,'2023-02-21','2023-03-29',99,10);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (39,79,0,'2022-12-02','2022-11-10',23,18);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (27,14,0,'2022-05-29','2022-09-08',84,6);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (43,55,1,'2022-08-15','2022-10-17',45,2);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (7,32,0,'2022-08-14','2022-06-01',59,10);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (19,9,1,'2022-07-06','2023-03-18',20,14);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (8,65,1,'2022-10-07','2022-08-01',50,11);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (62,47,0,'2022-06-17','2023-03-28',78,8);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (44,25,1,'2022-07-22','2022-05-15',33,6);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (60,37,1,'2023-02-02','2023-02-17',1,13);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (54,69,1,'2023-04-14','2023-03-29',37,9);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (53,61,0,'2023-01-22','2022-12-03',15,3);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (45,3,0,'2022-07-14','2022-06-03',99,7);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (26,26,1,'2022-08-23','2023-02-17',63,12);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (49,63,1,'2022-12-05','2023-03-20',38,20);
INSERT INTO User_Food(user_id,food_id,shared,expiration_date,purchase_date,location_id,quantity) VALUES (29,72,1,'2022-04-28','2022-06-07',7,11);

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

/* -- Insert into users table
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
       (2, 5), (2, 6); -- ham and turkey */