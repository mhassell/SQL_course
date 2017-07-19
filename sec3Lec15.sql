SELECT ENAME, JOB, SAL, COMM  -- some comm values are NULL (no value)
FROM EMP
WHERE EMPNO IN (7839, 7698, 7566, 7654)

SELECT ENAME, JOB, SAL, NVL(COMM, 0)  --set null vals to zero
FROM EMP
WHERE EMPNO IN (7839, 7698, 7566, 7654)

SELECT ENAME, JOB, SAL, NVL(COMM, 'no data found')    -- no good, COMM only has numbers
FROM EMP
WHERE EMPNO IN (7839, 7698, 7566, 7654)

SELECT ENAME, JOB, SAL, NVL(TO_CHAR(COMM), 'no data found')   -- now we can pipeline together
FROM EMP
WHERE EMPNO IN (7839, 7698, 7566, 7654)

SELECT ENAME, LENGTH(ENAME), NULLIF(LENGTH(ENAME),5) FROM EMP  -- null the field if the two args are equal

-- homework use NVL to write "length of name is 5" in the null col

SELECT ENAME, LENGTH(ENAME), NVL(TO_CHAR(NULLIF(LENGTH(ENAME),5)),'The length of the name is 5') FROM EMP