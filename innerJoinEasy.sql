--Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.	
SELECT sum(CITY.POPULATION)
FROM CITY
INNER JOIN COUNTRY ON CITY.CountryCode=COUNTRY.Code
where COUNTRY.Continent='Asia';

--Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.	
SELECT CITY.NAME
FROM CITY
INNER JOIN COUNTRY ON CITY.CountryCode=COUNTRY.Code
where COUNTRY.Continent='Africa';

--Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.	
select COUNTRY.Continent, floor(avg(CITY.Population))
from CITY
inner join COUNTRY on CITY.CountryCode=COUNTRY.Code 
group by COUNTRY.CONTINENT;
