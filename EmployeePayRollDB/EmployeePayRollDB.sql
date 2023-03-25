--EmployeePayRollService
--UC1
--Creating a database
CREATE DATABASE EmployeePayroll_Service;
--Using Database
USE EmployeePayroll_Service;
--Viewing database
SELECT DB_NAME();

--UC2
--Creating table
CREATE TABLE employee_payroll
(
Id INT IDENTITY(1,1),
Name VARCHAR(25) not null,
Salary MONEY not null,
Start DATE not null
);