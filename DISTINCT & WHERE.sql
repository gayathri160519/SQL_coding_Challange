-- Day 30: Clauses & Operators --

-- SQL Question 1: DISTINCT & WHERE --

CREATE DATABASE University;
USE University;

-- Department table
CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL
);

-- Course table
CREATE TABLE Course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    credits INT,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);

-- Student table
CREATE TABLE Student (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
) AUTO_INCREMENT=101;

-- Departments
INSERT INTO Department (dept_id, dept_name)
VALUES
(1, 'Computer Science'),
(2, 'Mathematics'),
(3, 'Physics');

-- Courses
INSERT INTO Course (course_id, course_name, credits, dept_id)
VALUES
(11, 'Data Structures', 4, 1),
(12, 'Linear Algebra', 3, 2),
(13, 'Quantum Mechanics', 5, 3);

-- Students
INSERT INTO Student (first_name, last_name, age, dept_id)
VALUES
('Rahul', 'Sharma', 20, 1),
('Priya', 'Kumar', 22, 2),
('Arjun', 'Mehta', 21, 1),
('Sneha', 'Patel', 23, 3);

-- Write a SQL query to return distinct department names using DISTINCT & WHERE --

SELECT DISTINCT dept_name
FROM Department
WHERE dept_id > 1;

-- Only unique departments are returned --
      










