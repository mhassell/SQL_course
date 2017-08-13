SELECT name FROM world WHERE population > (SELECT population FROM world WHERE name='Russia')

select name from world where gdp/population > (select gdp/population from world where name = 'United Kingdom') and continent = 'Europe'

select name, continent from world where continent in (select continent from world where name in ('Argentina', 'Australia')) order by name

select name, population from world where population < (select population from world where (name = 'Poland')) and population > (select population from world where name = 'Canada')

select name, concat(round(100*population/(select population from world where name = 'germany')), '%')from world where continent = 'europe'

select name from world where gdp > all(select gdp from world where continent = 'Europe' and gdp >0)

SELECT continent, name, area FROM world x WHERE area >= ALL (SELECT area FROM world y
WHERE y.continent=x.continent AND area>0)

select continent, name from world x where x.name = (select name from world y where x.continent = y.continent order by name asc limit 1)

select name, continent, population from world x where name in (select name from world y where all(y.population <= 25000000))

