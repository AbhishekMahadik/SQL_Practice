--calculate mannhatten distance btw p1 and p2 |x1 - x2| + |y1 - y2|.	
select ROUND(ABS(min(LAT_N)-max(LAT_N))+ABS(min(LONG_W)-max(LONG_W)),4)
from STATION;

--Euclidean Distance d = √[ (x 2 – x 1 )2 + (y 2 – y 1 )2]	
select 
ROUND(SQRT(POWER(min(LAT_N)-max(LAT_N),2)+POWER(min(LONG_W)-max(LONG_W),2)),4)
from STATION;

--Concatinate example	
--Oracle sql
select NAME||'('|| substr(OCCUPATION,0,1)||')'
from OCCUPATIONS
order by NAME; 

SELECT 'There are a total of '|| count(Occupation)||' '|| LOWER(occupation)||'s.'
FROM OCCUPATIONS
GROUP BY OCCUPATION
ORDER BY COUNT(Occupation), occupation ;

--Mysql query
(select CONCAT(NAME,'(',LEFT(OCCUPATION,1),')')
from OCCUPATIONS
order by NAME limit 100) 
UNION
(SELECT CONCAT('There are a total of ',count(Occupation),' ', LCASE(occupation),'s.')
FROM OCCUPATIONS
GROUP BY OCCUPATION
ORDER BY COUNT(Occupation), occupation ASC limit 100);