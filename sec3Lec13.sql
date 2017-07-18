/*

Good stuff https://www.techonthenet.com/

*/

SELECT SYSDATE FROM DUAL

SELECT SYSTIMESTAMP FROM DUAL  -- cool my host is in the UK

SELECT ADD_MONTHS('11/12/2012', 3) from DUAL

SELECT ADD_MONTHS('11/12/2012', -3) from DUAL

SELECT MONTHS_BETWEEN('11/12/2012', '12/21/2013') FROM DUAL  -- negative b/c it is first - second

SELECT TRUNC(SYSTIMESTAMP, 'MONTH') FROM DUAL  -- give the first day of the month

SELECT TRUNC(SYSTIMESTAMP, 'YEAR') FROM DUAL -- give the first day of the year

SELECT ENAME FROM EMP WHERE TRUNC(HIREDATE, 'YEAR') = '01/01/1982' -- who was hired in 1982

