--DB CREATION
create database TASK2;

--TABLE CREATION
create table stafflist
(
staff_id int primary key identity,--primary key
staff_age int check(staff_age >24),--check constraints
staff_name varchar(20) not null unique,--unique key
staff_designation varchar(20) default'staff'--default constraints
);

--SELECT QUERY FOR PRINTING THE OUTPUT
select * from stafflist;

--TRUNCATE TABLE
truncate table stafflist;

--INSERTING RECORDS
--primary key
insert into stafflist values (101,35,'Harshan','ArtTeacher');--1 record inserted 
insert into stafflist values (101,35,'Hemanth','ScienceTeacher');--id is unique so id=101 already exist in previous record
--check constraints
insert into stafflist values (102,30,'Sharon','MathsTeacher');--1 record inserted --age is checked whether it is greater than 24 or not 
insert into stafflist values (103,20,'David','SocialTeacher');--age is checked so it is less than 24 so conflicted with the CHECK constraint
--unique key
insert into stafflist values (104,32,'Antony','TamilTeacher');--1 record inserted --the name is checked whether it is unique or not 
insert into stafflist values (105,35,'Antony','EnglishTeacher');--name Antony already exist so Violation of UNIQUE KEY constraint occurs
--default constraints
insert into stafflist(staff_id,staff_age,staff_name) values (106,32,'Ramji');--1 record inserted --the designation is checked whether it exist or not if not the default value 'staff' will be inserted