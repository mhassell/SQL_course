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