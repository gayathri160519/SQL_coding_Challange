-- SQL Question 4: RENAME Table --

use city_hospital;

RENAME TABLE patients TO Patient_Info;

select * from Patient_Info;

-- The patients Table name is renamed as Patient_Info --