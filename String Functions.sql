-- Day 33: Functions --
-- SQL Question 1: String Functions --
USE employee;

-- UPPER --
SELECT employee_id, UPPER(employee_name) AS name_upper
FROM Employees;

-- LOWER --
SELECT employee_id, LOWER(employee_name) AS name_lower
FROM Employees;

-- SUBSTRING --
SELECT employee_id, SUBSTRING(employee_name, 1, 3) AS name_prefix
FROM Employees;

-- CONCAT --
SELECT employee_id, CONCAT(employee_name, ' - Employee') AS formatted_name
FROM Employees;


