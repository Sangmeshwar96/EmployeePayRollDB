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

--UC5
--Selecting salary of Bill
SELECT salary FROM employee_payroll WHERE Name = 'Bill';

--UC6
--Add extra column of gender
ALTER TABLE employee_payroll ADD Gender CHAR;
SELECT * FROM INFORMATION_SCHEMA.COLUMNS where TABLE_NAME = 'employee_payroll';
--Update gender of employees
UPDATE employee_payroll SET Gender = 'M' WHERE name = 'Bill' or name = 'Charlie';
UPDATE employee_payroll SET Gender = 'F' WHERE name = 'Terissa';
SELECT * FROM employee_payroll;