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
SELECT * FROM employee_payroll;

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

--UC7
--Sum of salary of all males
SELECT SUM(salary) AS SumOfSalaryOfMale FROM employee_payroll WHERE Gender = 'M' GROUP BY Gender
--Average salary according to gender
SELECT AVG(salary) AS AvgSalaryOfGender, Gender FROM employee_payroll GROUP BY Gender;
--Minimum salary according to gender
SELECT MIN(salary) AS MinSalary, Gender FROM employee_payroll GROUP BY Gender;
--Maximum salary acording to gender
SELECT MAX(salary)AS MaxSalary, Gender FROM employee_payroll GROUP BY Gender;
--Employee count according to gender
SELECT COUNT(Gender) AS CountOfGender, Gender FROM employee_payroll GROUP BY Gender;

--UC8
--Add additional Employee information columns
ALTER TABLE employee_payroll ADD phone_number varchar(13)
ALTER TABLE employee_payroll ADD address varchar(250), department varchar(20)
--Add department for existing enteries
UPDATE employee_payroll SET department = 'Sales' WHERE id in (1 , 3);
UPDATE employee_payroll SET department = 'Marketting' WHERE id = 2;