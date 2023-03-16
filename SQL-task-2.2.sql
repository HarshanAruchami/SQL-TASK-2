--DB CREATION
create database TASK21;

--TABLE CREATION
create table studentlist
(
std_id int identity(1,1),
std_age int,
std_name varchar(20)
);

--SELECT QUERY FOR PRINTING THE OUTPUT
select * from studentlist;

--TRUNCATE TABLE
truncate table studentlist;

--INSERTING RECORDS
insert into studentlist values (19,'Antony');
insert into studentlist values (20,'Arun');
insert into studentlist values (18,'Hari');

--Rename a table
EXEC sp_rename 'studentlist', 'tranieeslist'
--SELECT QUERY FOR PRINTING THE OUTPUT
select * from studentlist;--now this won't display any values as we changed the table name 
select * from tranieeslist;--now the values were displayed using the new table name

--Rename a database
alter database TASK21 MODIFY NAME = TASKTO
EXEC sp_renamedb 'TASK21','TASKTO' --now check the object explorer the DB name will be changed to the new name

--Rename a schema
create schema CGVAK

--TABLE CREATION
create table CGVAK.employees
(
emp_id int identity(1,1),
emp_age int,
emp_name varchar(20)
);

--SELECT QUERY 
select * from CGVAK.employees

--INSERTING RECORDS
insert into CGVAK.employees values (19,'Antony');
insert into CGVAK.employees values (20,'Arun');
insert into CGVAK.employees values (18,'Hari');

--CREATING A NEW SCHEMA FOR DATA TRANSFER
create schema G2;

--DATA TRANSFER FROM CGVAK TO G2
alter schema G2 TRANSFER CGVAK.employees;

--SELECT QUERY
select * from G2.employees

