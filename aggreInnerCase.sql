--Query the Name of any student in STUDENTS who scored higher than 75 Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.	
select Name 
from STUDENTS
where Marks>75 
order by RIGHT(Name,3), ID ASC; -- order by multiple column

--Write a query calculating the amount of error (i.e.:  ACTUAL-MISCALCULATED(WITHOUT 0)average monthly salaries), and round it up to the next integer.	
SELECT CEIL(avg(salary)-avg(REPLACE(salary, 0,'')))
from EMPLOYEES;

--Query the following two values from the STATION table:The sum of all values in LAT_N rounded to a scale of  decimal places.
--The sum of all values in LONG_W rounded to a scale of  decimal places.
SELECT ROUND(SUM(LAT_N),2), ROUND(SUM(LONG_W),2)
FROM STATION;

--Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than . Round your answer to  decimal places.	
select ROUND(LONG_W,4)
from STATION 
where LAT_N IN 
   (select max(LAT_N) from STATION
    WHERE LAT_N<137.2345);

--Query the smallest Northern Latitude (LAT_N) from STATION that is greater than . Round your answer to  decimal places.	
select ROUND(min(LAT_N),4)
from STATION
where LAT_N>38.7780;
