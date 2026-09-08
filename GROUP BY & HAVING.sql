-- SQL Question 3: GROUP BY & HAVING --
-- Write a query using GROUP BY and HAVING --

USE employee;

-- Find departments with more than 10 employees --
-- I dont have more than 10 records so i inserted more records --

INSERT INTO Employees (employee_id, employee_name, department_id, email) VALUES
(1, 'Asha', 1, 'asha@company.com'),
(2, 'Balu', 1, 'balu@company.com'),
(3, 'Cheran', 1, 'cheran@company.com'),
(4, 'David', 1, 'david@company.com'),
(5, 'Elsa', 1, 'elsa@company.com');

INSERT INTO Employees (employee_id, employee_name, department_id, email) VALUES
(6, 'Fathima', 2, 'fathima@company.com'),
(7, 'Gayathri', 2, 'gayathri@company.com'),
(8, 'Harini', 2, 'harini@company.com'),
(9, 'Indhu', 2, 'indhu@company.com'),
(10, 'Jennifer', 2, 'jennifer@company.com'),
(11, 'Karthiga', 2, 'karthiga@company.com'),
(12, 'Lakshmi', 2, 'lakshmi@company.com'),
(13, 'Meenakshi', 2, 'meenakshi@company.com');

select * from department;
select * from employees;

SELECT 
d.department_id,                                            -- JOIN → links employees to their departments --     
d.department_name,                                          -- GROUP BY → groups employees by department --
COUNT(e.employee_id) AS employee_count                      -- COUNT(e.employee_id) → counts how many employees are in each department --    
FROM Department d                                           -- HAVING COUNT(...) > 10 → filters only those departments with more than 10 employees --
JOIN Employees e ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name
HAVING COUNT(e.employee_id) > 10;

-- This will return Finance department because it has 12 employees --
-- Used AI support to write query --



