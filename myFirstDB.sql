-- To type in any comments double dash followed by a space
CREATE DATABASE MyFirstDB; 
USE MyFirstDB; -- specifies which DB you want to store under

CREATE TABLE groceryList(
id INTEGER PRIMARY KEY,
name VARCHAR(25),
quantity INTEGER);

INSERT INTO groceryList VALUES (1, "Bananas", 2);
INSERT INTO groceryList VALUES (2, "Peanut Butter", 1);
INSERT INTO groceryList VALUES (3, "Dark chocolate bars", 2);

SELECT * FROM groceryList; -- to grab data from table

-- Create a book table listing fave books and insert 3 books into the table 
-- Make sure to add an id column. Each book will have an id, title, and rating

-- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
-- To create a new database use line 21 and 22, and click on lightning button
CREATE DATABASE MyBookDB; -- select 2nd lightning button for action output 
USE MyBookDB; -- select 2nd lightning button for action output; also tells you which DB you're gonna be using

CREATE TABLE bookList(
id INTEGER PRIMARY KEY,
title VARCHAR(25), -- number refers to string length
rating INTEGER);

-- select all under CREATE TABLE, and click on 1st lightning cursor
-- see checkmark for it under Action Output

INSERT INTO bookList VALUES (1, "Jungle book", 5);
INSERT INTO bookList VALUES (2, "The Things They Carried", 5);
INSERT INTO bookList VALUES (3, "The Life of Pi", 5);
INSERT INTO bookList VALUES (4, "Sherlock Holmes", 5);
-- run these insert statements and see if they inserted under action outputs

SELECT * FROM bookList; -- this statement shows all the data we've entered so far; should see a table with those 4 records of book title names

-- leave cursor on line and click 2nd lightning bolt to run statement
-- You should see a green checkmark in action output
-- Also you should see a table 

-- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

-- CREATE TABLE bookList(
-- id INTEGER PRIMARY KEY,
-- title VARCHAR(25), -- number refers to string length
-- rating DECIMAL (3, 1));

-- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

CREATE TABLE movies (id INTEGER PRIMARY KEY, name TEXT, release_year INTEGER);

INSERT INTO movies VALUES (1, "Avatar", 2009);
INSERT INTO movies VALUES (2, "Titanic", 1997);
INSERT INTO movies VALUES (3, "Star Wars: Episode IV - A New Hope", 1977);
INSERT INTO movies VALUES (4, "Shrek 2", 2004);
INSERT INTO movies VALUES (5, "The Lion King", 1994);
INSERT INTO movies VALUES (6, "Disney's Up", 2009);
 
Select * FROM movies;

Select * FROM movies 
where release_year >= 2000 
ORDER by release_year;
-- order by sorts results in ascending order

-- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
-- highlight the db you want it under (make sure it's bold) and it'll store the name of the table under the tables section
CREATE TABLE todo_list (id INTEGER PRIMARY KEY, item TEXT, minutes INTEGER);
INSERT INTO todo_list VALUES (1, "Wash the dishes", 15);
INSERT INTO todo_list VALUES (2, "vacuuming", 20);
INSERT INTO todo_list VALUES (3, "Learn some stuff on KA", 30);
INSERT INTO todo_list VALUES (4, "Learn more SQL", 60);

SELECT * FROM todo_list;
SELECT SUM(minutes) FROM todo_list;

-- Primary Keys need to be unique

-- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

CREATE TABLE SnackAttack (id INTEGER PRIMARY KEY, name TEXT, origin TEXT, variety TEXT, quantity INTEGER , price decimal(3, 2), aisle INTEGER );
INSERT INTO SnackAttack VALUES (1, "Lays Masala", "India", "Chips", 100, 1.50, 1);
INSERT INTO SnackAttack VALUES (2, "Plaintain chips", "Mexico", "Chips", 50, 1.25, 1);
INSERT INTO SnackAttack VALUES (3, "Onion Rings", "South Korea", "Chips", 60, 1.00, 1);
INSERT INTO SnackAttack VALUES (4, "Red Bean mochi", "Japan", "Frozen", 40, 4.00, 2);
INSERT INTO SnackAttack VALUES (5, "Coconut Icecream", "Thailand", "Frozen", 30, 4.00, 2);
INSERT INTO SnackAttack VALUES (6, "Jackfruit Icecream", "Phillipines", "Frozen", 30, 4.00, 2);
INSERT INTO SnackAttack VALUES (7, "Falafel", "Israel", "Appetizers", 40, 2.00, 1);
INSERT INTO SnackAttack VALUES (8, "Turkish Delight", "Turkey", "Dessert", 20, 4.00, 3);
INSERT INTO SnackAttack VALUES (9, "Dolmades", "Greece", "Appetizers", 30, 5.00, 4);
INSERT INTO SnackAttack VALUES (10, "Spicy Garlic Shanghai Noodles", "China", "Appetizers", 60, 3.25, 4);
INSERT INTO SnackAttack VALUES (11, "Date Cashew Rolls", "Dubai","Desserts", 40, 5.00, 3);
INSERT INTO SnackAttack VALUES (12, "Savory veggie pretzels", "Germany", "Appetizers", 50, 3.00, 4);
INSERT INTO SnackAttack VALUES (13, "Pizza", "Italy", "Appetizers", 40, 3.00, 4);
INSERT INTO SnackAttack VALUES (14, "Chocolates", "Switzerland", "Dessert", 40, 3.50, 3);
INSERT INTO SnackAttack VALUES (15, "Veggie Dogs", "USA", "Appetizers", 40, 2.50, 5);

DELETE FROM SnackAttack WHERE id = 15;
UPDATE SnackAttack SET origin = "Anywhere" WHERE id = 14;
SELECT * FROM SnackAttack;

SELECT variety, SUM(price*quantity) FROM SnackAttack Group by variety;

-- xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
-- autoincrement primary key ID
drop table groceryList; -- deletes grocery list table

CREATE TABLE groceryList(
id INTEGER PRIMARY KEY auto_increment,
NAME VARCHAR(25),
quantity INTEGER);

INSERT INTO groceryList (name, quantity) VALUES ("Noodles", 2);
INSERT INTO groceryList (name, quantity) VALUES ("Sriracha", 1);
INSERT INTO groceryList (name, quantity) VALUES ("Kale", 2);
INSERT INTO groceryList (name, quantity) VALUES ("Mushrooms", 1);
INSERT INTO groceryList (name, quantity) VALUES ("Asparagus", 1);

select * from groceryList;
-- creates table with auto incrementation
