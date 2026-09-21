-- SQL Question 2: Date Functions --
-- Calculate employee tenure in years --

USE employee;

-- Use TIMESTAMPDIFF() in MySQL -- reference by AI --
-- Use DATEDIFF() in SQL Server -- reference by AI --

-- I Used TIMESTAMPDIFF() --
SELECT                                                   -- Tenure means how long someone has been working in their present role --
employee_id,
employee_name,
Hire_date,
TIMESTAMPDIFF(YEAR, Hire_date, CURDATE()) AS tenure_years
FROM Employees;

SELECT                                                     -- NOW() --
employee_id,
employee_name,
Hire_date,
TIMESTAMPDIFF(YEAR, Hire_date, NOW()) AS tenure_years
FROM Employees;

SELECT                                                     -- YEAR() --
employee_id,
employee_name,
Hire_date,
YEAR(CURDATE()) - YEAR(Hire_date) AS tenure_years
FROM Employees;


