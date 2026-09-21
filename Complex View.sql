-- SQL Question 3: Complex View --
USE employee;
-- Create a view joining Employees, Departments, and Salaries -- 
-- Complex View with Salary in Employees Table --

CREATE VIEW EmployeeDetailsView AS
SELECT 
    e.employee_id,
    e.employee_name,
    d.department_name,       -- If salary is in Employees, reference it as e.salary --
    e.salary                 -- salary comes directly from Employees --
FROM Employees e
JOIN Department d 
    ON e.department_id = d.department_id;

-- Test the View --

SELECT * FROM EmployeeDetailsView;

-- The view returns combined data from all the tables -- [AI support]
