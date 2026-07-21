



create database search;
use search;
drop database search;
create table lighting(
emp int primary key,
age int not null,
salary int,
name varchar(50)
);
insert into lighting
values
(3,33,200000400,"sandy");

drop table lighting;
select
*from lighting;

create database thor;

use thor;

create table word(
rollno int primary key,
name varchar(56),
marks int,
grade char,
city varchar(70)
);

select * from word;

insert into word 
(rollno,name,marks,grade,city)
values
(101,"sandeep",99,'A',"NAGARKURNOOL"),
(102,"SAHITHI",98,'A',"PALEM"),
(103,"CAPTAIN",90,'A',"PALEM"),
(104,"TONY",85,'B',"TOWN"),
(105,"NATASHA",70,'C',"PARIS"),
(106,"HAWKEYE",65,'C',"DELHI"),
(107,"VERNA",55,'F',"DELHI");

alter table word
add ages int not null default 20;

alter table word
drop age;

alter table word 
rename to studemt;

alter table word
change ages stu_ages int;
alter table word 
drop column stu_age;

SELECT * FROM WORD WHERE marks > 50 AND CITY = "DELHI";

SELECT * FROM WORD WHERE MARKS > 90 OR CITY = "PARIS"; 

SELECT * FROM WORD WHERE marks BETWEEN 80 AND 90;

SELECT * FROM WORD LIMIT 5;

SELECT * FROM WORD WHERE city IN ("delhi");

SELECT * FROM WORD WHERE city NOT IN ("delhi");

SELECT * FROM WORD ORDER BY city ASC;

SELECT * FROM WORD ORDER BY city DESC;

SELECT * FROM WORD ORDER BY grade ASC;

SELECT MAX(marks) from word;


create table dept(
id int primary key,
name varchar(50)
);

insert into dept 
values
(13,"sandeep"),
(10,"vi");

update dept
set id = 115
where id = 13;

 select * from dept;

create table teachers(
id int primary key,
name varchar(50),
dept_id int,
foreign key(dept_id)references dept(id)
on update cascade
on delete cascade
);

insert into teachers
values
(13,"sandeep",103),
(10,"vi",104);

select * from teacher;

create table student(
student_id int primary key,
name varchar(50)
);

insert into student values
(103,"fire"),
(104,"water");
select*from student;
use thor;
create table course(
student_id int primary key,
name varchar (50),
course varchar(100)
);
drop table course;
alter table course
add column name varchar(50);

insert into course values
(103,"sandeep","english"),
(105,"jio","math"),
(106,"airtel,","hindi"),
(109,"limit","science");

select * from course;

 select * from student as a
 inner join course as b
 on student. a =course.b;
 
 select * from student as a
left join course as b
on a.id = b.id;
 



