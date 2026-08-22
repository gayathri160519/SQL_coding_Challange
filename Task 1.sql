-- SQL Question 1: CREATE Table --

create database city_hospital;
use city_hospital;

create table patients (
PatientID int PRIMARY KEY AUTO_INCREMENT,
PatientName varchar(50) NOT NULL,
Age int check(age>0),
Gender ENUM("Male", "Female"),
AdmissionDate date
) AUTO_INCREMENT = 101;

insert into patients(PatientName, Age, Gender, AdmissionDate) Values
("Will", 35, "Male", "2025-01-24"),
("Elise", 40, "Female", "2025-02-04"),
("Smith", 25, "Male", "2025-04-04");

select * from patients;