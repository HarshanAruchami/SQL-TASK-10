--DATABASE CREATION
create database task10
--TABLE CREATION
Create table employees (EMPLOYEE_ID int identity(1,1),FIRST_NAME varchar(20), LAST_NAME varchar(20), EMAIL varchar(20),PHONE_NUMBER bigint, HIRE_DATE date, JOB_ID int, SALARY int) 
--TABLE INSERTION
insert into employees 
values('Harshan','A','harshan@gmail.com',9360554676,'2023-01-23',101,20000),
('sharon','D','sharon@gmail.com',9364354676,'2023-01-23',102,20000),
('Yamini','S','Yamini@gmail.com',9366745676,'2023-01-23',103,30000),
('hemanth','B','hemanth@gmail.com',9323654676,'2023-01-15',104,40000),
('hari','A','hari@gmail.com',9345623766,'2023-01-23',105,2100),
('ranita','R','ranita@gmail.com',9389325656,'2023-01-23',106,30000),
('harita','R','harita@gmail.com',9360234233,'2023-01-23',107,4000),
('karthi','J','karthi@gmail.com',9333354556,'2023-01-23',108,2000),
('vikram','F','vikram@gmail.com',9360553411,'2023-01-23',109,30000),
('vasanth','G','vasanth@gmail.com',9340554676,'2023-01-23',110,40000),
('siva','B','siva@gmail.com',9365564676,'2023-01-15',111,20000),
('dharsan','P','dharsan@gmail.com',9360676676,'2023-01-23',112,3000),
('srikanth','S','srikanth@gmail.com',9160534676,'2023-01-23',113,40000),
('arun','K','arun@gmail.com',9360347376,'2023-01-23',114,20000),
('harishmitha','K','harish@gmail.com',9360454676,'2023-01-23',115,30000),
('divyaprakash','D','divyaprah@gmail.com',9323154676,'2023-01-23',116,4000),
('selva','S','selva@gmail.com',9363574676,'2023-01-23',117,20000),
('dhanaprakash','D','dhanaprak@gmail.com',9323445676,'2023-01-23',118,2300),
('venkit','V','venkit@gmail.com',9345645576,'2023-01-23',119,40000),
('vignesh','V','vignesh@gmail.com',9360044676,'2023-01-23',120,20000)
--SELECT QUERY
select * from employees
--TRUNCATE TABLE
truncate table employees
--DROP TABLE
drop table employees

--1. Write a SQL query to find those employees who receive a higher salary than the employee with ID 16. Return first name, last name.
select FIRST_NAME,LAST_NAME from employees where SALARY >(select salary from employees where EMPLOYEE_ID=16)
--2. Write a SQL query to find out which employees have the same HIRE_DATE as the employee whose ID is 11. Return first name, last name, job ID.
select FIRST_NAME,LAST_NAME,JOB_ID from employees where HIRE_DATE IN (select HIRE_DATE from employees where EMPLOYEE_ID=11)
--3. Write a SQL query to find those employees who earn more than the average salary. Return employee ID, first name, last name.
select EMPLOYEE_ID,FIRST_NAME,LAST_NAME from employees where salary>(select avg(salary) from employees)
--4. Write a SQL query to find those employees who report to that manager whose first name is ‘’Yamini". Return first name, last name, employee ID and salary.
select FIRST_NAME,LAST_NAME,EMPLOYEE_ID,SALARY from employees where FIRST_NAME IN (select FIRST_NAME from employees where FIRST_NAME='Yamini')
--5. Write a SQL query to find those employees whose salary falls within the range of the smallest salary and 2500. Return all the fields.
select * from employees where salary between (select min(salary) from employees) and 2500;