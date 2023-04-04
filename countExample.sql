--Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
select distinct (CITY)
from STATION 
where (ID%2=0)

--Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.	
select COUNT(CITY)-COUNT(DISTINCT(CITY))
FROM STATION;
