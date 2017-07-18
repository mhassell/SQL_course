/* 

Single row functions 

these act on one row and return a single value

*/

SELECT 'my name is ' || ENAME FROM EMP

SELECT CONCAT('my name is ', ENAME) AS "RESULT"
FROM EMP

SELECT UPPER('hello') FROM EMP   -- hmmm, this is going to be fun. now we have for loops

SELECT 'world' FROM EMP WHERE DEPTNO = 20  -- note the title of column

-- dual table
SELECT lower('WORLD')
from DUAL 					-- DUAL contains a single record to test functions

SELECT 'pizza' AS FOOD, 'fanta' AS DRINK from DUAL   -- interesting that you get two cols

SELECT CONCAT(lower(ENAME), 'is the name ') FROM EMP
WHERE DEPTNO = 20

-- homework: return ENAME is their name and JOB is their game
SELECT CONCAT(CONCAT(CONCAT(LOWER(ENAME), ' is the name and '), JOB), ' is the game') AS "HOMEWORK" FROM EMP