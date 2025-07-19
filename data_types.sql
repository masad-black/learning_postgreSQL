
-- most commonly used numeric datatypes 
CREATE TABLE NumericDT(
	myInteger INTEGER,
	myDecimal DECIMAL(10, 2),
	myCount SERIAL
)

INSERT INTO NumericDT
VALUES (98989800, 6876.91)

INSERT INTO NumericDT
VALUES (9998, 6876686.9)

INSERT INTO NumericDT
VALUES (989898001, 6876.91989)

-- most commonly used string datatypes
CREATE TABLE StringDT(
	name VARCHAR(10),
	cnnic CHAR(5),
	description TEXT
)

INSERT INTO StringDT
VALUES ('Asad Butt', '37106', 'This is the first time i am learning the SQL postgreSQL database:D')


INSERT INTO StringDT
VALUES ('M.AsadButt', '37106', 'This will give me the (name) field error')

INSERT INTO StringDT
VALUES ('M.AsadButt', '37', 'This will give me the (cnnic) field error')

-- most commonly used time datatypes
CREATE TABLE TimeDT(
	myData DATE,
	myTime TIME,
	myTimeW TIME WITH TIME ZONE,
	myTS TIMESTAMP,
	myTSW TIMESTAMP WITH TIME ZONE
)


INSERT INTO TimeDT
VALUES ('2001-9-12', '08:44:54', '04:30:00+05:00', '2001-9-12 04:30:00', '2001-9-12 04:30:00+05:00')


INSERT INTO TimeDT
VALUES ('9-11-2004', '08:44:54', '04:30:00+05:00', '2001-9-12 04:30:00', '2001-9-12 04:30:00+05:00')

-- this is the custom date insertion
INSERT INTO TimeDT
VALUES ('11-2004-9', '08:44:54', '04:30:00+05:00', '2001-9-12 04:30:00', '2001-9-12 04:30:00+05:00')

-- boolean datatype in postgres
CREATE TABLE BooleanDT(
	myTrue BOOL,
	myFalse BOOLEAN
)

INSERT INTO BooleanDT
VALUES (TRUE, FALSE)


INSERT INTO BooleanDT
VALUES ('t', 'f')


INSERT INTO BooleanDT
VALUES ('0', '1')

-- array in postgres
CREATE TABLE ARRAYDT(
	names VARCHAR(25) ARRAY,
	even_nums INTEGER[],
	grid INTEGER[3][3],
	salaries DECIMAL[]	
)

INSERT INTO ArrayDT
VALUES ('{"toji", "eren", "naruto", "itachi", "goku"}','{2,4,6,8}', '{{1,2,3}, {4,5,6}, {7,8,9}}', '{2500.45, 7787.99, 1281}')

INSERT INTO ArrayDT
VALUES (ARRAY['top_men', 'second_men', 'third_men'], ARRAY[1,2,3,4,5,6], ARRAY[[1,2,3],[1,2,3],[1,2,3]], ARRAY[12.000, 1221.797, 445.979])

-- json and jsonb datatype in postgress
CREATE TABLE jsonDT(
	simpleData JSON,
	binaryData JSONB
)

INSERT INTO jsonDT
VALUES ('{"name": "Toji", "age": 25, "clan": "zennin"}', '{"name": "itachi", "age": 21, "clan": "uchia"}')

SELECT * FROM jsonDT



