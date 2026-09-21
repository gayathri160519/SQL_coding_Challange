-- SQL Question 2: DCL Commands --
USE employee;

-- Create the User -- This sets up the account --
CREATE USER 'junior_analyst'@'localhost' IDENTIFIED BY 'securePassword123';

-- Grant Access --
GRANT SELECT ON Employees TO 'junior_analyst'@'localhost';       -- This allows the junior analyst to run queries but not modify data --
GRANT SELECT ON Department TO 'junior_analyst'@'localhost';
FLUSH PRIVILEGES;                                                -- user can query both tables --

SHOW GRANTS FOR 'junior_analyst'@'localhost';                    -- shows exactly what permissions the user has --


-- Revoke Access --
REVOKE SELECT ON Employees FROM 'junior_analyst'@'localhost';
REVOKE SELECT ON Department FROM 'junior_analyst'@'localhost';   -- If the grant exists, it will be removed --
FLUSH PRIVILEGES;

-- After GRANT: the junior analyst can run SELECT queries on Employees and Department --
-- After REVOKE: they’ll get a permission denied error when trying to query those tables --
-- CREATE USER → make the account --
-- GRANT → give privileges --
-- REVOKE → remove privileges --  [Used AI Support]
