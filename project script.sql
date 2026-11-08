create database departments;
 create database location;
 create database employees;
select * from employees;
select * from location;
 create database employees;
select	* from employees;
select * from departments;
create table employess (
empioyee_id int,
employee_name varchar(20),
gender enum('M', 'F'),
age int,
hire_date date,
designation varchar(100),
department_id int,
location_id int,
salary decimal(10.2)
);
create table department_details(
department_id int primary key,
department_name varchar(100)
);
create table location_details (
location_id int primary key,
location varchar(30)
);
select * from employees_details;
alter table employess add email varchar (50);
alter table employess rename to employees_details;
alter table employees_details rename column empioyee_id to employee_id;
alter table employees_details modify employee_id int , add primary key (employee_id);	
alter table employees_details modify designation varchar(120);
alter table employees_details drop age;
alter table employees_details rename column hire_date to date_of_joining;
rename table department_details to departments_info;
select*from departments_info;
rename table location_details to locations;
select*from locations;
truncate table employees_details;
drop table employees_details;
drop database employees;
create database employee;
create table employees(
empioyee_id int primary key,
employee_name varchar(20),
gender enum('M', 'F'),
age int,
hire_date date,
designation varchar(100),
department_id int,
location_id int,
salary decimal(10.2)
);
alter table departments_info modify department_name varchar (100) not null , add constraint department_name unique (department_name);
alter table locations modify location varchar(30) not null unique;
alter table employees modify empioyee_id int primary key,modify employee_name varchar(100)not null;
alter table employees rename column empioyee_id to employee_id;
alter table employees add constraint age check (age >=18);
alter table employees alter column hire_date set default (current_date);
alter table employees add constraint employee_department foreign key (department_id)references departments_info (department_id);
alter table employees add constraint employee_location	foreign key (location_id)references locations(location_id);
select*from locations;
select*from departments_info;
select*from employees;
alter table employees add constraint employee_location	foreign key (location_id)references locations(location_id);
alter  table employees 
add constraint employee_location_id 
foreign key (location_id) 
references location.locations(location_id);





