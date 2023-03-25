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

--UC3
--Inserting data in table
INSERT INTO employee_payroll VALUES
('Bill',100000.00,'2018-01-03'),
('Terissa',200000.00,'2019-11-13'),
('Charlie',300000.00,'2020-05-21');

--UC4
--Selecting all columns and rows of table
SELECT * FROM employee_payroll;