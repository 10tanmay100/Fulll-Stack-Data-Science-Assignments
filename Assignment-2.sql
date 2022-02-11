-- Write an SQL query to print the first three characters of  FIRST_NAME from Worker
-- table.

use ineuron;


select left(first_name,3) as first_three from worker;

-- Q-2. Write an SQL query to find the position of the alphabet (‘a’) in the first name
-- column ‘Amitabh’ from Worker table.

select first_name,locate("a",first_name,1) as position from worker;

-- Write an SQL query to print the name of employees having the highest salary in each
-- department.
select First_name from worker
where (department,salary) in (
select department,max(salary) as max from worker
group by 1);
 


