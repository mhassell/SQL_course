
-- this was tough!
(SELECT CITY, length(city) from station where length(city) = 
(select min(length(city)) from station) order by city asc limit 1)
union
(SELECT CITY, length(city) from station where length(city) = 
(select max(length(city)) from station) order by city asc limit 1)

-- Weather Observation Station 6
select city from station where left(city,1) in ('a', 'e', 'i', 'o', 'u')

-- Weather Observation Station 7
select distinct city from station where right(city,1) in ('a', 'e', 'i', 'o', 'u')

-- Weather Observation Station 8
select distinct city from station where ( right(city,1) in ('a', 'e', 'i', 'o', 'u') 
	and left(city,1) in ('a', 'e', 'i', 'o', 'u'))

-- Weather Observation Station 9
select distinct city from station where left(city,1) not in ('a', 'e', 'i', 'o', 'u') 

-- Weather Observation Station 10
select distinct city from station where right(city,1) not in ('a', 'e', 'i', 'o', 'u') 

-- Weather Observation Station 11
select distinct city from station where ( right(city,1) not in ('a', 'e', 'i', 'o', 'u') 
	or left(city,1) not in ('a', 'e', 'i', 'o', 'u') )

-- Weather Observation Station 12
select distinct city from station where ( right(city,1) not in ('a', 'e', 'i', 'o', 'u') 
	and left(city,1) not in ('a', 'e', 'i', 'o', 'u') )

-- Higher Than 75 Marks
select name from students where marks > 75 order by right(name,3), id

-- Employee Names
select name from Employee order by name


-- Employee Salaries
select name from employee where salary > 2000 and months < 10 order by employee_id