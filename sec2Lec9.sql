# exercise: return employees that are salesmen and make either 300 in commission or more than
# 1000 in commision

SELECT * FROM EMP
WHERE JOB = 'SALESMAN'
AND (COMM = 300 
OR COMM > 1000)

-- using the LIKE operator
SELECT * FROM EMP
WHERE JOB LIKE 'S%'  	-- % is a wildcard for "anything else"

SELECT * FROM EMP
WHERE JOB LIKE '%GER'  	-- anything that ends with GER

