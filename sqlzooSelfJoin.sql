select count(id) from stops

select stops.id from stops where stops.name = 'Craiglockhart'

select stops.id, stops.name 
	from stops inner join route on route.stop = stops.id 
	where route.company = 'LRT' 
	AND route.num = '4'

SELECT company, num, COUNT(num)
	FROM route WHERE stop=149 OR stop=53
	GROUP BY company, num
	HAVING count(num) = 2