/*
DDL: stands for data definition language, we can use DDL statments to manage the db objects like tables, view, schemas etc.

We can do alot of things with the help of DDL commands. Like
creating db objects,
changing the objects,
adding the constraints on the colums,
modifying the table colums thier data types, name etc.
*/

-- 1: first DDL statment is CREATE: that will help us in creating the table object in DB.
CREATE TABLE first_table(
	first_col VARCHAR(10),
	second_col INT,
	third_col JSONB,
	fourth_col TEXT[]
);

-- 2: second DDL statment id DEFAULT: that will help in setting the default data in the row, this will only run when the data is inserted
-- not when the table is created

CREATE TABLE second_table(
	first_col VARCHAR(10) DEFAULT 'SOMETHING',
	second_col INT DEFAULT 99
);

INSERT INTO second_table (first_col, second_col)
VALUES (DEFAULT, DEFAULT);

-- 3: DDL statment is GENERATE ALWAYS AS: this col store data by working wiht other cols. There are 2 types of col stored and virtual
-- store: is just like the basic col and
-- virtaul: is only generated when readed

CREATE TABLE third_table(
	price DECIMAL(10, 3) DEFAULT 1.000,
	discount DECIMAL(10, 2) GENERATED ALWAYS AS ((price/30) * 100) STORED
);

INSERT INTO third_table
VALUES (2000);

INSERT INTO third_table
VALUES (DEFAULT);

/*
4: we can set the rules on each of the seperate the colums, these rules are known as the CONSTRAINT in the sql/postgreSQL db.
there are many types of constrainst for the colums and as well as the tables

1: CHECK: is like an if condition if true value is stored and false raise an error
2: NOT NULL: this doesn't allow the column value to be sotred as null
3: UNIQUE: don't allow to store same data in rows
4: PRIMARY KEY: this allow a cloumn to be NOT NULL and UNIQUE, so that each table row should have atlest on uniqe column 
*/

CREATE TABLE fourth_table(
	first_name varchar(10) check(LENGTH(first_name) <= 10),
	age int,
	is_valid boolean generated always as (age > 18) STORED,
	CONSTRAINT is_eligible_for_driving check(is_valid = true)
);

INSERT INTO fourth_table
VALUES ('toji', 25);

-- first constraint check
INSERT INTO fourth_table
VALUES ('this)length_is_not_valid', 25);

-- table constraint check
INSERT INTO fourth_table
VALUES ('itachi', 16);

INSERT INTO fourth_table
VALUES ('naruto', 19);

CREATE TABLE fifth_table(
	first_col VARCHAR(10) NOT NULL
);

-- this is a lenght null, so add check (lenght(first_col) > 0)
INSERT INTO fifth_table
VALUES ('');

CREATE TABLE six_table(
	first_col int UNIQUE,
	second_col int UNIQUE
);

INSERT INTO six_table
VALUES (10, 20);

INSERT INTO six_table
VALUES (9, 0);

INSERT INTO six_table
VALUES (null, null);


CREATE TABLE seven_table(
	first_col int PRIMARY KEY
);

INSERT INTO seven_table
VALUES (1);


SELECT * FROM seven_table;

/*
5: DDL statment is ALTER TBALE: this is used to change the defination or structure of the existing table in the DB.
this will not change the data inside the table.

We can do alot of things with this ALTER TABLE statment like.
	1: i can add new col into the table.
	2: i can delete and existing col in the table.
	3: rename a col.
	4: rename table.
	5: change the col CONSTRAINTS, and DEFAULT value
*/

CREATE TABLE for_modification(
	first_col text,
	second_col varchar(100) not null
);

-- adding new columns, by default null will be stored in new column.
ALTER TABLE for_modification ADD COLUMN third_col int DEFAULT(999);
ALTER TABLE for_modification ADD COLUMN fourth_col timestamp DEFAULT(CURRENT_TIMESTAMP);
ALTER TABLE for_modification ADD COLUMN fifth_col timestamp array;

-- removing some colums
ALTER TABLE for_modification DROP first_col;
ALTER TABLE for_modification DROP fifth_col;

-- changing data types
ALTER TABLE for_modification ALTER COLUMN third_col TYPE numeric(10, 2);

-- renaming the col and table
ALTER TABLE for_modification RENAME COLUMN second_col TO description;
ALTER TABLE for_modification RENAME COLUMN third_col TO prices;

ALTER TABLE for_modification RENAME TO simple;


-- 5: DDL statment is DROP: this will remove the whole object form the DB along with data.
DROP TABLE first_table;
DROP TABLE second_table;

















