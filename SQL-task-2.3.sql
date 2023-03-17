create database TRANIEES

--a. id as identity column, name, salary, increment, computed column as Revised salary(sal+inc)

create table freshers
(
id int identity(1,1),
name varchar(20),
salary int,
increment int,
);

--select query 
select * from freshers;

--record insertion 
insert into freshers values ('Harshan',20000,1000);
insert into freshers values ('Hemanth',30000,3000);

-- Revised salary(sal+inc)
alter table freshers 
ADD revised_salary AS (salary+increment);

--b. Retrieve all the records whose salary is >20000 and move them into a new table using (SELECT INTO)

select * into WORKA from freshers where salary > 20000

--select query 
select * from WORKA;

