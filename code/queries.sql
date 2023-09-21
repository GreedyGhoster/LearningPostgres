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

-- ------------------------------------------------------------------------------------------------

-- ORDER BY, LIMIT, DISTINCT, Renaming columns

-- Order by salary ascending 
SELECT employee_id, first_name, last_name, salary FROM employees
ORDER BY salary

-- Order by salary descending 
SELECT employee_id, first_name, last_name, salary FROM employees
ORDER BY salary DESC 

-- Order by salary ascending with limit
SELECT employee_id, first_name, last_name, salary FROM employees
ORDER BY salary
LIMIT 15

-- select all unique coffe_shop_id 
SELECT DISTINCT coffee_shop_id FROM employees

-- select coffe_shop_id as CSI
SELECT DISTINCT coffee_shop_id AS CSI FROM employees

-- ------------------------------------------------------------------------------------------------

-- EXTRACT

-- select individual parts of hire_date
SELECT
	hire_date as date,
	EXTRACT(YEAR FROM hire_date) AS year,
	EXTRACT(MONTH FROM hire_date) AS month,
	EXTRACT(DAY FROM hire_date) AS day
FROM employees;

-- ------------------------------------------------------------------------------------------------

-- UPPER, LOWER, LENGTH, TRIM
-- UPPER, LOWER, LENGTH, TRIM

-- Uppercase first and last names
SELECT
	first_name,
	UPPER(first_name) AS first_name_upper,
	last_name,
	UPPER(last_name) AS last_name_upper
FROM employees;

-- Lowercase first and last names
SELECT
	first_name,
	LOWER(first_name) AS first_name_upper,
	last_name,
	LOWER(last_name) AS last_name_upper
FROM employees;

-- Return the email and the length of emails
SELECT
	email,
	LENGTH(email) AS email_length
FROM employees;

-- TRIM
SELECT
    LENGTH('     HELLO     ') AS hello_with_spaces,
LENGTH('HELLO') AS hello_no_spaces,
    LENGTH(TRIM('     HELLO     ')) AS hello_trimmed;