SELECT id, title
 FROM movie
 WHERE yr=1962

 select yr from movie where title = 'Citizen Kane'

 select id, title, yr from movie where title like '%Star Trek%' order by yr

 select id from actor where name = 'Glenn Close'

 select id from movie where title = 'Casablanca'

 select actor.name from 
 	(casting join movie on movie.id = casting.movieid join actor on actor.id = casting.actorid) 
 	where movie.id = (select movie.id from movie where title = 'Casablanca')

select actor.name from 
	(casting join movie on movie.id = casting.movieid join actor on actor.id = casting.actorid) 
	where movie.id = (select movie.id from movie where title = 'Alien')

select movie.title from 
	(casting join movie on movie.id = casting.movieid join actor on actor.id = casting.actorid) 
	where actor.id = (select actor.id from actor where name = 'Harrison Ford')

select movie.title from 
	(casting join movie on movie.id = casting.movieid join actor on actor.id = casting.actorid)
	 where actor.id = (select actor.id from actor where name = 'Harrison Ford') 
	 AND casting.ord != 1

select movie.title, actor.name from 
	(casting join movie on movie.id = casting.movieid join actor on actor.id = casting.actorid) 
	where (casting.ord =1 and movie.yr = '1962')