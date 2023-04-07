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