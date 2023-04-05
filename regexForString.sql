/* Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. 
Your result cannot contain duplicates.*/
select distinct CITY 
from STATION
where CITY REGEXP '(a|e|i|o|u)$';

select distinct city from station where right(city,1) in ('a','e','i','o','u');
SELECT DISTINCT city FROM station WHERE SUBSTR(city, -1) in ('a','e','i','o','u') ;

--Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. 
--Your result cannot contain duplicates.
select distinct CITY
from STATION
where CITY REGEXP '^(a|e|i|o|u)';

--Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
select distinct CITY 
from STATION
where CITY REGEXP '^(a|e|i|o|u).*(a|e|i|o|u)$';

--Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
select distinct CITY  from STATION where CITY REGEXP '^[^aeiou]';

select distinct CITY from STATION where substring(CITY,1,1) not in ('a','e','i','o','u');
select distinct CITY from STATION where LEFT(City, 1) not in ('a','e','i','o','u');
SELECT DISTINCT city FROM station WHERE NOT SUBSTR(city,1,1) IN ('A','E','I','O','U');

--Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
select distinct CITY from STATION where substr(CITY,-1) not in ('a','e','i','o','u');
select distinct CITY from STATION where CITY REGEXP '[^aeiou]$';

--Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.	
select distinct CITY  from STATION where CITY REGEXP '^[^a|e|i|o|u]' or CITY REGEXP '[^a|e|i|o|u]$';
select distinct CITY from STATION where LEFT(City,1) not in ('a','e','i','o','u') 
or RIGHT(city,1) NOT IN ('a','e','i','o','u');
