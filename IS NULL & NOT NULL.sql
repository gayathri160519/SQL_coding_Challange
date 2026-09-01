-- SQL Question 2: IS NULL & NOT NULL --

-- Add a new column named 'email' to Student table

USE University;
ALTER TABLE Student ADD email VARCHAR(100);

-- Update some students with emails

UPDATE Student
SET email = 'rahul.sharma@example.com'
WHERE student_id = 101;

UPDATE Student
SET email = 'priya.kumar@example.com'
WHERE student_id = 102;

-- Write queries to find students with NULL and NOT NULL emails --

-- Students with NULL emails

SELECT student_id, first_name, last_name, email
FROM Student
WHERE email IS NULL;

-- Students with NOT NULL emails

SELECT student_id, first_name, last_name, email
FROM Student
WHERE email IS NOT NULL;
