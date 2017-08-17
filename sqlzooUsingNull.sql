select teacher.name from teacher where teacher.dept is null

SELECT teacher.name, dept.name
 FROM teacher INNER JOIN dept
           ON (teacher.dept=dept.id)

SELECT teacher.name, dept.name
 FROM teacher Left JOIN dept
           ON (teacher.dept=dept.id)

SELECT teacher.name, dept.name
 FROM teacher RIGHT JOIN dept
           ON (teacher.dept=dept.id)

select teacher.name, coalesce(teacher.mobile, '07986 444 2266') 
	from teacher

select teacher.name, coalesce(dept.name, 'None')  
	from teacher 
	left join dept on teacher.dept = dept.id

select count(teacher.name), count(teacher.mobile) from teacher  -- only counts non-null values

select dept.name, count(teacher.id) 
	from teacher 
	right join dept on teacher.dept = dept.id 
	group by dept.name

select teacher.name, 
	CASE WHEN teacher.dept = 1 THEN 'Sci' 
	WHEN teacher.dept = 2 THEN 'Sci' 
	Else 'Art' END 
	from teacher

select teacher.name, 
	CASE WHEN teacher.dept = 1 THEN 'Sci' 
	WHEN teacher.dept = 2 THEN 'Sci' 
	WHEN teacher.dept = 3 THEN 'Art' 
	ELSE 'None' END 
	from teacher
