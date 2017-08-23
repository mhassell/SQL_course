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

SELECT a.company, a.num, a.stop, b.stop
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
  WHERE a.stop=53 AND b.stop = 149

-- why is this necessary??
SELECT a.company, a.num, stopa.name, stopb.name
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
  JOIN stops stopa ON (a.stop=stopa.id)
  JOIN stops stopb ON (b.stop=stopb.id)
WHERE stopa.name='Craiglockhart' AND stopb.name = 'London Road'

SELECT DISTINCT a.company, a.num
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
  WHERE a.stop=115 AND b.stop = 137

SELECT a.company, a.num
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
  JOIN stops stopa ON (a.stop=stopa.id)
  JOIN stops stopb ON (b.stop=stopb.id)
WHERE stopa.name='Craiglockhart' AND stopb.name = 'Tollcross'

SELECT distinct stopb.name, a.company, a.num
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
  JOIN stops stopa ON (a.stop=stopa.id)
  JOIN stops stopb ON (b.stop=stopb.id)
WHERE stopa.name='Craiglockhart'


