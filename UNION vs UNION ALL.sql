-- SQL Question 3: UNION vs UNION ALL --
USE employee;

-- I already have employees Table -- Now I created a New Table as CurrentEmployee to see how Union VS Union All Works --

CREATE TABLE CurrentEmployees (
emp_id INT PRIMARY KEY,
emp_name VARCHAR(50),
department VARCHAR(50),
hire_date DATE
);

INSERT INTO CurrentEmployees (emp_id, emp_name, department, hire_date)
VALUES
(1, 'Rahul', 'IT', '2022-05-10'),
(2, 'Priya', 'HR', '2021-03-15'),
(3, 'Arjun', 'Finance', '2020-07-20'),
(4, 'Asha', 'Marketing', '2023-09-01'),
(5, 'Karthiga', 'Sales', '2024-01-15'),
(6, 'Rehana', 'IT', '2025-06-20');

-- UNION -- combining lists of current(new table) and past employees(old table) --
-- automatically eliminates duplicates --

SELECT emp_id, emp_name FROM CurrentEmployees
UNION
SELECT employee_id, employee_name FROM Employees;

-- UNION ALL -- combines results and keeps duplicates --

SELECT emp_id, emp_name FROM CurrentEmployees
UNION ALL
SELECT employee_id, employee_name FROM Employees;


