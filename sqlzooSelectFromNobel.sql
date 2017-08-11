SELECT yr, subject, winner FROM nobel WHERE yr = 1950

SELECT winner FROM nobel WHERE yr = 1962 AND subject = 'Literature'

select yr, subject from nobel where winner = 'Albert Einstein'

select winner from nobel where subject = 'Peace' and yr >=2000

select yr, subject, winner from nobel where subject = 'Literature' and yr>= 1980 and yr <=1989

SELECT * FROM nobel WHERE winner IN ('Theodore Roosevelt', 'Woodrow Wilson', 'Jimmy Carter', 'Barack Obama')

select winner from nobel where winner like 'John%'

select * from nobel where (subject = 'Chemistry' and yr = 1984) or (subject = 'Physics' and yr = 1980) 

select * from nobel where subject not in  ('Chemistry', 'Medicine') and yr = 1980

select * from nobel where (subject = 'Medicine' and yr < 1910) or (subject ='literature' and yr >=2004)

select * from nobel where winner = 'PETER GRÜNBERG'

select * from nobel where winner = 'EUGENE O\'NEILL'

select winner, yr, subject from nobel where winner like 'Sir%' order by yr desc, winner

SELECT winner, subject FROM nobel WHERE yr=1984 ORDER BY subject IN ('Physics','Chemistry'), subject, winner

