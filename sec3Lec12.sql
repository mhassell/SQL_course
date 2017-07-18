SELECT * FROM EMP 
WHERE job = UPPER('manager')

-- single row character functions (operate on characters)
SELECT INITCAP('hello world') FROM DUAL  -- capitalizes initial ltr of each word

SELECT LENGTH('hello world') FROM DUAL   -- count characters in the string

SELECT ENAME as NAME, LENGTH(ENAME) as LENGTH from EMP