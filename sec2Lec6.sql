SELECT * FROM EMP
WHERE JOB != 'SALESMAN'

SELECT * FROM EMP
WHERE JOB != 'SALESMAN'
AND SAL < 2500

SELECT * FROM EMP
WHERE JOB != 'SALESMAN'
AND SAL <= 3000

# Quiz: find salesmen whose commision is more than their salary
SELECT * FROM EMP
WHERE JOB = 'SALESMAN'
AND SAL < COMM

# Quiz: get all employess that are not managers and have a salary greater than 2500
# and work in department 20
SELECT * FROM EMP 
WHERE JOB != 'MANAGER'
AND SAL > 2500
AND DEPTNO = 20			# don't need single quotes to compare numerical values