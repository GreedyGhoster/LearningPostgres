-- Create tables 
CREATE TABLE locations(
	city VARCHAR(50) NOT NULL,
	country VARCHAR(20) NOT NULL,
	city_id SERIAL PRIMARY KEY
);

CREATE TABLE shops(
	coffee_shop_name VARCHAR(40) NOT NULL,
	city_id INTEGER REFERENCES locations(city_id),
	coffee_shop_id SERIAL PRIMARY KEY
);

CREATE TABLE suppliers(
	coffee_shop_id INTEGER REFERENCES shops(coffee_shop_id),
	supplier_name VARCHAR(50) NOT NULL,
	coffee_type VARCHAR(30) NOT NULL,
  PRIMARY KEY (coffee_shop_id, supplier_name)
);

CREATE TABLE employees(
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	email VARCHAR(255) NOT NULL,
	hire_date DATE NOT NULL,
	gender gender_type,
	salary MONEY NOT NULL,
	coffee_shop_id INTEGER REFERENCES shops(coffee_shop_id),
	employee_id INTEGER PRIMARY KEY
);

-- Add foreign key to the employees table
ALTER TABLE employees
ADD FOREIGN KEY (coffee_shop_id)
REFERENCES shops(coffee_shop_id)
ON DELETE SET NULL

ALTER TABLE shops
ADD FOREIGN KEY (city_id)
REFERENCES locations(city_id)
ON DELETE SET NULL

-- Insert into employees
INSERT INTO employees
VALUES ('Carson', 'Mosconi', 'cmosconi0@census.gov', '2015/08/29', 'M', 32973, NULL, 501559);

INSERT INTO employees 
VALUES ('Khalil', 'Corr', 'kcorr1@github.io', '2014/04/23', 'M', 52802, NULL, 144108);

-- Insert into shops
INSERT INTO shops VALUES('Common Grounds', NULL, 1);

-- Update coffee_shop_id for persons with id = 144108 and 501559
UPDATE employees
SET coffee_shop_id = 1
WHERE employee_id IN (144108, 501559)
