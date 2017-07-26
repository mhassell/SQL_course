
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
select distinct city from station where right(city,1) in ('a', 'e', 'i', 'o', 'u')

-- Weather Observation Station  9
select distinct city from station where ( right(city,1) in ('a', 'e', 'i', 'o', 'u') 
	and left(city,1) in ('a', 'e', 'i', 'o', 'u'))