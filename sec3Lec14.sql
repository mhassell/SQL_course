SELECT TO_CHAR(SYSDATE, 'mm-dd-yy') from DUAL

SELECT TO_CHAR(SYSDATE, 'ddth "of " Month, yyyy') FROM DUAL

SELECT TO_CHAR(SYSDATE, 'ddth "of " month, yyyy') FROM DUAL

SELECT ENAME as "NAME", TO_CHAR(SAL, '00,000.00') FROM EMP -- forces zeros

SELECT ENAME as "NAME", TO_CHAR(SAL, '99,999.00') FROM EMP

SELECT TO_DATE('2012-08-27', 'yyyy-mm-dd') FROM DUAL -- converts to a date, you give the wildcards for the input format

SELECT TO_DATE('3 of June, 2012', 'dd "of" mm, yyyy') FROM DUAL  --like a regex