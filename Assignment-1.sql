-- MYSQl Assignment
use ineuron;

create table worker
(
id int auto_increment,
First_name varchar(255),
last_name varchar(255),
age int,
country varchar(255),
primary key(id));






insert into worker
values
(1,"Rahul","Roy",30,"India"),
(2,"Shuva","Dey",32,"India"),
(3,"John","Ray",22,"USA");


alter table worker
add department varchar(255);

set sql_safe_updates=0;

update worker
set department="IT"
where first_name="Rahul";

update worker set department="HR"
where first_name="Shuva";

update worker set department="IT"
where first_name="John";

insert into worker
values
(4,"Raja","Roy",30,"India","Cash"),
(5,"Shiva","Dev",20,"India","Account"),
(6,"Rosee","Ray",21,"USA","Public Relationship"),
(7,"Tanmoy","Roy",30,"India","IT"),
(8,"Devika","Dev",20,"India","Account"),
(9,"Rossy","Ray",21,"USA","Customer Relationship"),
(10,"Rajesh","Roy",30,"India","Store"),
(11,"Shivani","Maheswari",20,"India","Account"),
(12,"Rose","Ray",21,"USA","Public Relationship");






-- Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias
-- name as Worker Name?
select first_name as Worker_name from worker;

-- Write an SQL query to fetch unique values of DEPARTMENT from Worker table.
select distinct department from worker;

-- Write an SQL query to show the last 5 record from a table.
select * from worker
order by id desc
limit 5;






