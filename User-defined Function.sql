-- SQL Question 3: User-defined Function --

USE studentdb;
DESCRIBE Students;

DELIMITER $$

CREATE FUNCTION GetFull(fname VARCHAR(50), lname VARCHAR(50))
RETURNS VARCHAR(100)
DETERMINISTIC                                    -- DETERMINISTIC means the function always returns the same output for the same input --
BEGIN
    RETURN CONCAT(fname, ' ', lname);                            -- CONCAT(fname, ' ', lname) joins first and last name with a space --
END$$

DELIMITER ;                                

SELECT studentid, GetFull(first_name, lastname) AS FullName      -- Full name is returned when function is called --
FROM Students;

SELECT GetFull('Asha', 'Reddy') AS FullName;                     -- now we can call GetFull() in reports, joins, or views --        
                                                                 -- Reuse Anywhere --     
--  reusable function to return full name of a student --
