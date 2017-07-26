
-- Type of Triangle
SELECT IF(A+B>C AND A+C > B AND C+B > A, 
         IF(A=B AND A=C, 'Equilateral',
         IF(A=B OR A=C OR B=C, 'Isosceles','Scalene')),
         'Not A Triangle')
         
         FROM TRIANGLES;

-- The PADS
SELECT CONCAT(NAME, concat(concat('(',left(Occupation,1),')'))) from occupations order by name;

SELECT Concat(Concat('There are a total of ', count(occupation)),' doctors.') from occupations where occupation = 'doctor';
SELECT Concat(Concat('There are a total of ', count(occupation)),' actors.') from occupations where occupation = 'actor';
SELECT Concat(Concat('There are a total of ', count(occupation)),' singers.') from occupations where occupation = 'singer';
SELECT Concat(Concat('There are a total of ', count(occupation)),' professors.') from occupations where occupation = 'professor';

-- this was nice from the user section
select concat(Name,'(',Substring(Occupation,1,1),')') as Name
from occupations
Order by Name
select concat('There are total',' ',count(occupation),' ',lower(occupation),'s.') as total
from occupations
group by occupation
order by total
