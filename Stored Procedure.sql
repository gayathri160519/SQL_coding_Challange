-- Day 34: Procedures & Views --
-- SQL Question 1: Stored Procedure --

USE employee;

-- Create Stored Procedure --
DELIMITER $$

CREATE PROCEDURE GetEmployee_Details(IN empId INT)             -- IN empId INT → input parameter for EmployeeID --
BEGIN                                                          -- The query filters the Employees table by that ID --
    SELECT employee_id, employee_name, hire_date, department_id
    FROM Employees
    WHERE employee_id = empId;
END$$

DELIMITER ;

CALL GetEmployee_Details(2);                                   -- Reuse for Any Employee --

CALL GetEmployee_Details(3);

-- This way, HR can simply call the procedure with an ID and instantly get the employee’s record -- (Used AI) --
