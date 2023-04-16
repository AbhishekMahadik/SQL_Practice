--Calculate median	

--1
with cte as 
(select lat_n, row_number() over(order by LAT_N) as n from station)
select round(lat_n,4) from cte 
where n=(select ceil(count(n)/2) from cte);

--2
SET @n := -1;
SELECT ROUND(AVG(sorted.LAT_N), 4) as median
FROM
(SELECT @n := @n + 1 as n, LAT_N
from STATION
ORDER BY LAT_N) as sorted
WHERE sorted.n in (floor(@n/2), ceil(@n/2));

--3
SELECT CAST(ROUND(AVG(LAT_N),4) AS DECIMAL(10,4)) 
FROM (SELECT LAT_N, ROW_NUMBER() OVER(ORDER BY LAT_N) AS RowNumber, 
COUNT(*) OVER() AS TotalRows FROM STATION) AS temp 
WHERE RowNumber IN ((TotalRows + 1) / 2, (TotalRows + 2) / 2);
