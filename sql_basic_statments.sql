-- product status to tell user about the porduct
CREATE TYPE product_status as ENUM ('in_stock', 'out_of_stock', 'removed_from_inventory', 'comming_soon');

-- product tables for learning - SQL
CREATE TABLE products(
	id SERIAL PRIMARY KEY,
	name varchar(100) not null,
	sku_code char(12) not null,
	description text,
	price decimal(10, 3) not null,
	quantity int default 0,
	is_active boolean default True,
	delivery_time timestamp,
	release_date date,
	tags text[],
	specifications jsonb,
	status product_status default 'in_stock'
);


/*
SQL has the execution order for the queries

SQL basic statments
1: SELECT: is used to pick columns form tables
	SELECT clo1, col2, col3 or SELECT * this will select all the avaliable cols in the table

2: INSERT:
3: UPDATE:
4: DELETE: 
5: FROM: it tell the db to pick data form which table, function, views etc
6: WHERE: is like a if condition, if the row satisfies the condition than that row will me shown in the results
7: ORDER BY: is used to sort the records in asecnding and desending order
*/

SELECT 
	name,
	price,
	tags,
	status
FROM products;

SELECT 
	name,
	status,
	release_date,
	quantity
FROM products;

SELECT 
name,
price
FROM products
WHERE price > 300;

SELECT 
	name,
	price,
	status
FROM products
WHERE status = 'in_stock';

SELECT 
	name,
	price,
	quantity,
	status
FROM products
WHERE status = 'in_stock'
ORDER BY price DESC;

SELECT 
	name,
	price,
	status,
	quantity
FROM products
WHERE quantity > 10 and quantity < 50
ORDER BY quantity ASC;

select * from products;












