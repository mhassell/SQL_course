SELECT matchid, player from goal where teamid = 'GER'

SELECT id,stadium,team1,team2 FROM game where id = 1012

SELECT player, teamid, stadium,mdate FROM game JOIN goal ON (id=matchid) where teamid = 'GER'

select game.team1, game.team2, goal.player from game inner join goal on (goal.matchid = game.id) where goal.player like 'Mario%'

SELECT player, teamid, coach, gtime FROM goal JOIN eteam on teamid=id WHERE gtime<=10

select game.mdate, eteam.teamname from game inner join eteam on (eteam.id = game.team1) where eteam.coach = 'Fernando Santos'

select goal.player from goal inner join game on (goal.matchid = game.id) where game.stadium = 'National Stadium, Warsaw'

select distinct goal.player from goal inner join game on (goal.matchid = game.id) where (goal.teamid != 'GER' and (game.team1 = 'GER' or game.team2 = 'GER') )

select eteam.teamname, count(eteam.teamname) from eteam inner join goal on goal.teamid = eteam.id group by(eteam.teamname)

select game.stadium, count(game.stadium) from game inner join goal on game.id = goal.matchid group by game.stadium

SELECT goal.matchid, game.mdate, count(goal.matchid) FROM game join goal on (goal.matchid = game.id) WHERE (game.team1 = 'POL' OR game.team2 = 'POL') group by game.mdate, goal.matchid

select goal.matchid, game.mdate, count(goal.matchid) from game inner join goal on game.id = goal.matchid where goal.teamid = 'GER' group by goal.matchid, game.mdate

SELECT mdate,
  team1,
  sum(CASE WHEN teamid=team1 THEN 1 ELSE 0 END) score1, 
  team2, 
  sum(CASE WHEN teamid=team2 THEN 1 ELSE 0 END) score2
  FROM game LEFT JOIN goal ON matchid = id 
  group by mdate, matchid, team1, team2