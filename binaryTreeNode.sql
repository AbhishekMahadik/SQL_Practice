--Print the type of nodein the binary tree (Root ,Leaf, Inner)	
SELECT DISTINCT(N), 
IF(P IS NULL, 'Root', IF(N IN (SELECT P FROM BST), 'Inner', 'Leaf')) 
FROM BST 
ORDER BY N;

--2
select n , 
case when p is null then 'Root' 
when n not in (select p from BST where p is not null) then 'Leaf' 
else 'Inner' 
end as t 
from BST 
order by n asc;
