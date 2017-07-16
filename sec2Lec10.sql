-- aliases

SELECT * FROM EMP

SELECT ENAME, SAL, COMM    -- this is unclear
FROM EMP

SELECT ENAME EMPLOYEE, SAL SALARY, COMM COMMISION   -- using aliases
FROM EMP

SELECT ENAME EMPLOYEE NAME, SAL SALARY, COMM COMMISION  -- can't have spaces
FROM EMP

SELECT ENAME "EMPLOYEE NAME", SAL SALARY, COMM COMMISION   -- use double quotes for aliases
FROM EMP

SELECT ENAME AS "EMPLOYEE NAME", SAL AS SALARY, COMM AS COMMISION   -- ANSI standard
FROM EMP

-- using pipes
SELECT 'Hello my name is ' || ename FROM EMP     -- must use single quotes

/* 

Note: 

It seems that we use single quotes for things in the table
or things that interact with things in the table
and double quotes for things not in the table 

*/

-- but the header is messy
SELECT 'Hello my name is ' || ename FROM EMP 
WHERE JOB = 'MANAGER'

SELECT 'Hello my name is ' || ename AS "Concatenated Value" FROM EMP 
WHERE JOB = 'MANAGER'

/*

Assignment: print out ENAME makes SAL per month for all employees

*/

SELECT ENAME || ' makes ' || SAL || ' per month ' AS "RESULT" from EMP 