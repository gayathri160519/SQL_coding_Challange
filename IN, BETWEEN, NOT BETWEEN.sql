-- SQL Question 3: IN, BETWEEN, NOT BETWEEN --

USE University;

-- Filter students enrolled in specific courses or within certain GPA ranges --

ALTER TABLE Student ADD gpa DECIMAL(3,2);           -- I added gpa Column --

UPDATE Student SET gpa = 3.8 WHERE student_id = 101;
UPDATE Student SET gpa = 3.2 WHERE student_id = 102;
UPDATE Student SET gpa = 2.5 WHERE student_id = 103;
UPDATE Student SET gpa = 3.9 WHERE student_id = 104;

SELECT student_id, first_name, last_name, gpa FROM Student     -- Students in specific GPA values using IN --
WHERE gpa IN (3.2, 3.8);

SELECT student_id, first_name, last_name, gpa FROM Student     -- Students within a GPA range using BETWEEN --
WHERE gpa BETWEEN 3.0 AND 4.0;

SELECT student_id, first_name, last_name, gpa FROM Student     -- Students outside a GPA range using NOT BETWEEN --
WHERE gpa NOT BETWEEN 2.0 AND 3.0;

-- combined query --

CREATE TABLE Enroll (
    enroll_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES Student(student_id),
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
);

INSERT INTO Enroll (student_id, course_id)
VALUES
(101, 11), 
(102, 12),  
(103, 13);  
  
-- combined query -- Filter students enrolled in specific courses or within certain GPA ranges -- Used AI --

SELECT s.student_id, s.first_name, s.last_name, c.course_name, s.gpa
FROM Student s
JOIN Enroll e ON s.student_id = e.student_id
JOIN Course c ON e.course_id = c.course_id
WHERE c.course_name = 'Data Structures'
  AND s.gpa >= 3.5;
  
-- This finds students enrolled in Mathematics who also have a GPA ≥ 3.5 --
-- This way we can flexibly filter by course enrollment, GPA ranges, or both together --  



