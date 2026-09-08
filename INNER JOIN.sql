-- Day 32: Joins & Union --
-- SQL Question 1: INNER JOIN --

USE studentsdb;
-- Write a query joining Students and Courses --

SELECT s.studentid, s.first_name, c.course_name            -- Students s → Base table with student details --
FROM Students s                                            -- Enroll e → Bridge table that links students to courses --
INNER JOIN Enroll e                                        -- Courses c → Contains course names and details --
ON s.studentid = e.studentid                               -- INNER JOIN ensures only students who are enrolled in a course are shown --
INNER JOIN Courses c 
ON e.courseid = c.courseid;

-- Results include only students with valid enrollments --
 