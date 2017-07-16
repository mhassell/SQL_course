# using OR statements

SELECT * FROM EMP
WHERE JOB = 'CLERK'
OR JOB = 'SALESMAN'

# just tell me the names
SELECT ENAME FROM EMP
WHERE JOB = 'CLERK'
OR JOB = 'SALESMAN'
AND SAL > 2500

# quiz: write a query to return the names and hire dates of employees that work in 
# either dallas or chicago (w/o joins)

SELECT ENAME, HIREDATE FROM EMP 
WHERE DEPTNO = 20
OR DEPTNO = 30