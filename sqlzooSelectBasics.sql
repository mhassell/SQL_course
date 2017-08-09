-- https://sqlzoo.net/wiki/SELECT_basics

SELECT population FROM world
  WHERE name = 'Germany'

SELECT name, population FROM world
  WHERE name IN ('Sweden','Norway','Denmark');

SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000

SELECT name, continent, population FROM world

SELECT name FROM world
WHERE population > 200000000

select name, gdp/population from world where population > 200000000

select name, population/1000000 from world where continent = 'south america'

select name, population from world where name in ('France', 'Germany', 'Italy')

select name from world where name like '%united%'

select name, population, area from world where (population > 250000000 or area > 3000000)

select name, population, area from world where (population > 250000000 xor area > 3000000)

select name, round(population/1000000,2), round(gdp/1000000000,2)  from world where continent = 'south america'

select name, round(gdp/population, -3) from world where gdp > 1000000000000

SELECT name, capital FROM world where ( LEFT(name,1) = left(capital,1) and not (capital = name) )

SELECT name FROM world
WHERE name LIKE '%a%' and name LIKE '%e%' and  name LIKE '%i%' and  name LIKE '%o%'
and  name LIKE '%u%' AND name NOT LIKE '% %'