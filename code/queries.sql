-- SELECT, WHERE, AND, OR --

-- Select all columns
SELECT * FROM shops

-- Select some columns
SELECT city_id, coffee_shop_id FROM shops

-- Select all columns where city_id = 1
SELECT * FROM shops
WHERE city_id = 1

-- Select all columns where city_id = 1 and coffee_shop_name = 'Urban Grind'
SELECT * FROM shops
WHERE city_id = 1 AND coffee_shop_name = 'Urban Grind'

-- Select all columns where gender = 'M' and coffee_shop_id = 5 and salary < 20000
SELECT * FROM employees
WHERE salary < 20000 AND gender = 'M' AND coffee_shop_id = 5
-- ------------------------------------------------------------------------------------------------

-- IN, NOT IN, IS NULL, BETWEEN --

-- Select all columns where not city_id = 1
SELECT * FROM shops
WHERE NOT city_id = 1 -- --> city_id != 1

-- Select all columns where coffee_type = 'Robusta' and coffee_type = 'Arabica'
SELECT * FROM suppliers
WHERE coffee_type IN ('Robusta', 'Arabica')

-- Select all columns where coffee_type != 'Robusta' and coffee_type != 'Arabica'
SELECT * FROM suppliers
WHERE coffee_type NOT IN ('Robusta', 'Arabica')

-- Select all columns where email is null
SELECT * FROM employees
WHERE email IS NULL

-- Select all columns where email isn't null
SELECT * FROM employees
WHERE email IS NOT NULL

-- Select all columns where gender = 'F' and coffee_shop_id = 1 and salary between 10000 and 15000
SELECT * FROM employees
WHERE (gender = 'F') AND (coffee_shop_id = 1) AND (salary BETWEEN 10000 AND 15000)