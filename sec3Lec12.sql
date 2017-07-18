SELECT * FROM EMP 
WHERE job = UPPER('manager')

-- single row character functions (operate on characters)
SELECT INITCAP('hello world') FROM DUAL  -- capitalizes initial ltr of each word

SELECT LENGTH('hello world') FROM DUAL   -- count characters in the string

SELECT ENAME as NAME, LENGTH(ENAME) as LENGTH from EMP

SELECT ENAME, LENGTH(ENAME) as LENGTH FROM EMP
WHERE LENGTH(ENAME) = 6

SELECT SUBSTR('hello',2,2)  -- starting at the 2nd position extract 2 characters
FROM DUAL

SELECT SUBSTR('hello',2)
FROM DUAL

SELECT LPAD('hello',10, '%') FROM DUAL  -- add left padding to make length 10. % is the padding char

SELECT LPAD('hello',2, '%') FROM DUAL  -- fixed width of two from the left

SELECT LTRIM('hhhhhhhello', 'h') from DUAL

SELECT RTRIM('helloooooo', 'o') from DUAL

SELECT LTRIM('hhhhhhhello', 'h') from DUAL UNION SELECT RTRIM('helloooooo', 'o') from DUAL