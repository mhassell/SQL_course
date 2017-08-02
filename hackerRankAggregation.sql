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

