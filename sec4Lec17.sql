-- gets the average salary for for each job title

select avg(sal), job
from emp
group by job

-- only returns one of each (consolidates)
select job
from emp
group by job

-- counts the number of members of each job title
select count(*), job
from emp
group by job

select min(sal), job
from emp
group by job

-- this does the same as the one below
select job
from emp
group by job

-- this does the same as the one above
select distinct job
from emp 
group by job

-- cannot use group functions in where clause
select count (*), job
from emp
where count(job) = 2
group by job

-- very important structure
select count(*), job
from emp
group by job
having count(*) = 2

-- general structure
1) select count(*), job
2) from emp
3) group by job
4) having count(*) = 2
5) order by

-- homework: write a query that returns dept numbers with >=4 emps
select count (*), deptno
from emp
group by deptno
having count(job) >=4