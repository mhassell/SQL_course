CREATE TABLE PE2a(

	FIBNUMS int

);

CREATE TABLE PE2b(

	EVENS int

);

-- using binet's formula to compute the nth fibonacci number
DECLARE 
	x NUMBER := 0
BEGIN

	FOR i IN 1..(4*POW(10,6)-1) LOOP
		x := (POW(1+SQRT(5),i) - POW(1-SQRT(5),i))/(POW(2,i)*SQRT(5))
		INSERT INTO PE2a VALUES ( x )
	COMMIT

END

/*

DECLARE 
	x NUMBER;
BEGIN

	FOR i IN 1..(4*POWER(10,2)-1) LOOP
		-- x:= (POWER(1+SQRT(5),i) - POWER(1-SQRT(5),i))/(POWER(2,i)*SQRT(5));
                x := SQRT(5);
		INSERT INTO PE2a VALUES ( x );
        END LOOP;
	COMMIT;
END;

SELECT TO_NUMBER(FIBNUMS,4) FROM PE2a

drop table pe2a

CREATE TABLE PE2a(

	FIBNUMS int

);
*/