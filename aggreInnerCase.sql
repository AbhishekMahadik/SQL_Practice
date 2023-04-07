--Query the Name of any student in STUDENTS who scored higher than 75 Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.	
select Name 
from STUDENTS
where Marks>75 
order by RIGHT(Name,3), ID ASC; -- order by multiple column

--Check if columns form triangle	
SELECT 
CASE WHEN A+B > C THEN 
    CASE 
    WHEN A=B AND B=C THEN 'Equilateral' 
    WHEN A=B OR B=C OR A=C THEN 'Isosceles' 
    WHEN A!=B OR B!=C OR A!=C THEN 'Scalene' 
    END 
ELSE 'Not A Triangle' 
END as '' FROM TRIANGLES;

--Write a query calculating the amount of error (i.e.:  ACTUAL-MISCALCULATED(WITHOUT 0)average monthly salaries), and round it up to the next integer.	
SELECT CEIL(avg(salary)-avg(REPLACE(salary, 0,'')))
from EMPLOYEES;

--Query the following two values from the STATION table:The sum of all values in LAT_N rounded to a scale of  decimal places.
--The sum of all values in LONG_W rounded to a scale of  decimal places.
SELECT ROUND(SUM(LAT_N),2), ROUND(SUM(LONG_W),2)
FROM STATION;

--We define an employee's total earnings to be their monthly  worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. Then print these values as  space-separated integers.	
SELECT SALARY*MONTHS, COUNT(*) 
FROM EMPLOYEE 
GROUP BY SALARY*MONTHS
HAVING SALARY*MONTHS=(SELECT MAX(SALARY*MONTHS) FROM EMPLOYEE);

select max(total),count(total) 
from 
(select (salary*months) as total
from Employee) 
as max 
group by total desc limit 1;

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
