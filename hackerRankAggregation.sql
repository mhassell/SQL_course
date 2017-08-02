-- Revising Aggregations - The Count Function
SELECT count(ID) from city where population > 100000

-- Revising Aggregations - The Sum Function
Select sum(population) from city where district = 'california'

-- Revising Aggregations - Averages
select avg(population) from city where district = 'california'

-- Average Population
select floor(avg(population)) from city

-- Japan Population
select sum(population) from city where countrycode = 'jpn'

-- Population Density Difference
select max(population) - min(population) from city

-- The Blunder
Select ceil(avg(salary) - avg(cast(replace(cast(salary as char(10)), '0', '') as unsigned))) from employees
/*  Evidently you can do this without casting as well */

--I need to understand this one better
select max(months*salary), count(*) from employee where salary*months = (select max(months*salary) from employee)