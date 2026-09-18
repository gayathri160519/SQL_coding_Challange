-- SQL Question 2: LEFT & RIGHT JOIN --
-- Use LEFT JOIN and RIGHT JOIN between Students and Enrollments --

USE studentsdb;

-- I dont have NULL values so i inserted one NULL record --

INSERT INTO Students (studentid, first_name) VALUES (6, 'Kiran');

-- LEFT JOIN --
-- A LEFT JOIN in SQL is used when you want to return all rows from the left table, and the matching rows from the right table. --
-- If there’s no match, the result will still include the left table’s row, but with NULL values for the right table’s columns --  

SELECT 
s.studentid,                                  
s.first_name,
c.course_name,
e.enrollment_date
FROM Students s
LEFT JOIN Enroll e ON s.studentid = e.studentid
LEFT JOIN Courses c ON e.courseid = c.courseid;

-- This ensures all students are listed. If no student enrolled, student fields show NULL. All students, whether enrolled or not --

-- RIGHT JOIN --
-- A RIGHT JOIN is the mirror image of a LEFT JOIN. It returns all rows from the right table, and the matching rows from the left table --
--  If there’s no match, the result will still include the right table’s row, but with NULL values for the left table’s columns --

SELECT 
c.courseid,
c.course_name,
s.first_name,
e.enrollment_date
FROM Students s
RIGHT JOIN Enroll e ON s.studentid = e.studentid
RIGHT JOIN Courses c ON e.courseid = c.courseid;

-- This ensures all courses are listed. If no student enrolled, student fields show NULL --
