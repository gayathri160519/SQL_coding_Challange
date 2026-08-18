-- SQL Question 2: ALTER – Add Column --

use city_hospital;
alter table patients add (DoctorAssigned Varchar(50));
select * from patients;