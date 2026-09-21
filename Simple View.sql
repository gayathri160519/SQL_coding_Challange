-- SQL Question 2: Simple View --
USE employee;

-- A new view is created --

CREATE VIEW EmployeeDeptView AS                -- This defines a reusable view named EmployeeDeptView --
SELECT                                         
employee_name, 
department_id
FROM Employees;

SELECT * FROM EmployeeDeptView;

-- Management can query the view directly without worrying about table structure --
