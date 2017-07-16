# using IN for the last query

SELECT ENAME, HIREDATE FROM EMP
WHERE DEPTNO IN (20,30)

# more compact
SELECT * FROM EMP
WHERE ENAME IN ('FORD','SMITH', 'ALLEN', 'WARD','MARTIN')

# complement of the above
SELECT * FROM EMP
WHERE ENAME NOT IN ('FORD','SMITH', 'ALLEN', 'WARD','MARTIN')

SELECT * FROM EMP
WHERE HIREDATE BETWEEN '05/01/1981' AND '12/09/1982'

# quiz: find employees who earn between 1000 and 2000 (inclusive)
SELECT * FROM EMP
WHERE SAL BETWEEN 1000 AND 2000

SELECT * FROM EMP
WHERE SAL NOT BETWEEN 950 AND 1600

SELECT * FROM EMP
WHERE COMM IS NOT NULL     # null = no data

# HW: write a query that returns employees that don't make any commission and have
# a salary greater than 1100 but less than 5000.  Exclude those that have a salary of exactly
# 3000

SELECT * FROM EMP 
WHERE COMM IS NULL
AND SAL BETWEEN 1100 AND 5000
AND SAL != 3000