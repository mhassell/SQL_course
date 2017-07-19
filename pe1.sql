CREATE TABLE PE1(

      Col1 int

);

BEGIN
   FOR i IN 1..999 LOOP
      IF MOD(i,3) = 0 THEN     -- i is even
         INSERT INTO PE1 VALUES (i);
      ELSIF MOD(i,5) = 0 THEN
         INSERT INTO PE1 VALUES (i);
      END IF;
   END LOOP;
   COMMIT;
END;

SELECT SUM(COL1) AS "HA-HAH!" FROM PE1

DROP TABLE PE1