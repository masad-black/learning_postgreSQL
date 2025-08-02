-- DML: stands for data manipulation language, this is used to make changes in the table itself
-- there are 3 types of DML statments

-- 1: INSERT
-- 2: UPDATE
-- 3: DELETE

INSERT INTO products
(name, sku_code, description, price, quantity, is_active, delivery_time, release_date, tags, specifications, status)
VALUES (
	'Orange Gree Tea - 50 Bags',
	'GTEAORG00987',
	'Premium organic green tea bags sourced from Himalayan farms.',
	11.987,
	500,
	true,
	'2025-08-03 10:15:00',
    '2025-06-15',
	ARRAY['organic', 'healthy', 'tea', 'beverage'],
	'{
		"brand": "HerbalNest",
		"packaging": "50 tea bags",
		"ingredients": ["Grean Tea Leaves"],
		"certified_organic": true
	}'::JSONB,
	'in_stock'
);

UPDATE products SET price = 5.897, quantity = 140, tags = ARRAY['organic', 'healthy', 'beverage', 'peace'] 
WHERE id = 16;


DELETE FROM arraydt
DROP TABLE arraydt;

SELECT * FROM products;
