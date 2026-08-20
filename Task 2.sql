-- SQL Question 2: ALTER – Add Column --

use city_hospital;

alter table patients add DoctorAssigned varchar(100);

insert into patients(DoctorAssigned) Values
("Will", 35, "Male", "2025-01-24", "Dr.Joe"),
("Elise", 40, "Female", "2025-02-04", "Dr.Emma"),
("Smith", 25, "Male", "2025-04-04", "Dr.Ron");

select * from patients;

select DoctorAssigned from patients;


