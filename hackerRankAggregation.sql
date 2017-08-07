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

-- Weather Observation Station 12
select round(sum(lat_n),2), round(sum(long_w),2) from station

-- Weather Observation Station 13
select round(sum(lat_n),4) from station where (lat_n > 38.7880 and lat_n < 137.2345)

-- Weather Observation Station 13
select truncate(max(lat_n),4) from station where lat_n < 137.2345

-- Weather Observation Station 15
select round(long_w,4) from station where lat_n < 137.2345
order by lat_n desc
limit 1

-- Weather Observation Station 16
select round(lat_n, 4) from station where lat_n > 38.7780 order by lat_n asc limit 1

-- Weather Observation Station 17
select round(long_w, 4) from station where lat_n > 38.7780 order by lat_n asc limit 1

-- Weather Observation Station 18
select round(abs(min(lat_n)-max(lat_n)) + abs(min(long_w)-max(long_w)),4) from station  

-- Weather Observation Station 19
select round(sqrt(power(min(lat_n)-max(lat_n),2)+power(min(long_w)-max(long_w),2)),4) from station

-- Weather Observation Station 20
select round(lat_n,4) from station order by lat_n asc limit 1 offset 249