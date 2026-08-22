-- SQL Question 5: TRUNCATE vs DROP --

use city_hospital;

TRUNCATE TABLE Patient_Info;

select * from Patient_Info;

-- TRUNCATE → clears data but keeps the table structure. --

DROP TABLE Patient_Info;

select * from Patient_Info; -- To Check --

-- DROP → deletes the table completely, including its structure. --


