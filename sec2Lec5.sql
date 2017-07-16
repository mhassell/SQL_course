# filtering with where
 
SELECT * FROM emp WHERE job = 'MANAGER'   # need quotes to compare strings, don't use ==
										  # the strcmp is also case sensitive!

SELECT * FROM emp WHERE JOB = 'MANAGER'   # JOB is not case sensitive
										  # data is case sensitive, keywords are not

SELECT * FRMO emp WHERE job = 'SALESMAN'

## more filtering with AND statements

SELECT * 
FROM emp
WHERE job = 'SALESMAN'
AND sal = 1600
AND COMM = 300

