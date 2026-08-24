CREATE DATABASE employee;
USE employee;
CREATE TABLE Departments(
department_id INT, 
department_name VARCHAR(100));
CREATE TABLE Location(
location_id INT,
location VARCHAR(30));
CREATE TABLE employees(
employee_id INT,
employee_name VARCHAR(50),
gender ENUM('M','F'),
age INT,
hire_date DATE,
designation VARCHAR(100),
department_id INT,
location_id INT,
salary DECIMAL(10,2));
ALTER TABLE employees
ADD COLUMN email VARCHAR(30);
ALTER TABLE employees
MODIFY designation VARCHAR(250);
ALTER TABLE employees
DROP COLUMN age;
ALTER TABLE employees
RENAME COLUMN hire_date TO date_of_joining;
RENAME TABLE departments TO department_info;
RENAME TABLE Location TO Locations;
TRUNCATE TABLE employees;
SELECT * FROM employees;
DROP TABLE employees;
DROP DATABASE employee;
CREATE DATABASE employee;
USE employee;
CREATE TABLE Departments(
department_id INT PRIMARY KEY, 
department_name VARCHAR(100) UNIQUE NOT NULL);
CREATE TABLE Location(
location_id INT AUTO_INCREMENT PRIMARY KEY,
location VARCHAR(30));
CREATE TABLE employees(
employee_id INT PRIMARY KEY,
employee_name VARCHAR(50) NOT NULL,
gender ENUM('M','F'),
age INT CHECK (age>=18),
hire_date DATE DEFAULT (current_date),
designation VARCHAR(100),
department_id INT,
FOREIGN KEY(department_id) REFERENCES departments(department_id),
location_id INT,
FOREIGN KEY (location_id) REFERENCES location(location_id),
salary DECIMAL(10,2));
SELECT * FROM employees;



