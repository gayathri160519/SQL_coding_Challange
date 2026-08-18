-- SQL Question 1: CREATE Table --

create database city_hospital;

use city_hospital;

create table patients 
(
PatientID int,
PatientName VARCHAR (50),
Age int,
Gender VARCHAR(50),
AdmissionDate Date
);