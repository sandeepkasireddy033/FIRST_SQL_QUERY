
create database lap;
show databases;
use lap;


CREATE TABLE prime (
    student_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL
);
select*from prime;

insert into prime values(1,"sandy",23 );
insert into students values(2,"sj24",22 );

create database rmc;
use rmc;
create table back (
employee_id int primary key,
name varchar(50),
salary int not null
);

select*from back;

drop database rmc;
show databases


