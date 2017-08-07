-- Asian Population
SELECT SUM(City.Population) FROM CITY INNER JOIN COUNTRY ON 
City.CountryCode = Country.Code WHERE Country.Continent = "Asia"

-- African Cities
SELECT City.Name from CITY INNER JOIN COUNTRY ON 
City.CountryCode = Country.Code WHERE Country.Continent = "Africa"

-- Average Population of Each Continent
SELECT Country.Continent, FLOOR(AVG(City.Population)) FROM CITY INNER JOIN COUNTRY ON
City.CountryCode = Country.Code GROUP BY Country.Continent

-- The Report
SELECT IF(GRADE >= 8, SELECT STUDENTS.NAME, GRADES.Grade, STUDENTS.Marks FROM STUDENTS INNER JOIN ON
		STUDENTS.MARK >= GRADES.Min_Mark AND STUDENTS.MARK <= MAX_MARK)

-- Top Competitors
select hacker_id, name from 