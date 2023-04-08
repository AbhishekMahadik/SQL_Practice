--Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.	
select CITY, length(CITY)
from STATION
where CITY= 
(select CITY
from STATION
order by length(CITY),CITY limit 1) union
select CITY, length(CITY)
from STATION
where CITY= 
(select CITY
from STATION
order by length(CITY) desc,CITY limit 1);

--Given the table schemas below, write a query to print the company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees. Order your output by ascending company_code.	
select Company.company_code, Company.founder, count(distinct Lead_Manager.lead_manager_code), 
count(distinct Senior_Manager.senior_manager_code), count(distinct Manager.manager_code), count(distinct Employee.employee_code)
from Company,Lead_Manager,Senior_Manager,Manager,Employee
where Company.company_code=Lead_Manager.company_code 
and Senior_Manager.company_code=Company.company_code
and Manager.company_code=Company.company_code
and Employee.company_code=Company.company_code
group by Company.company_code,Company.founder
order by Company.company_code;
	
select c.company_code,c.founder, count(distinct lm.lead_manager_code), 
count(distinct sm.senior_manager_code), count(distinct m.manager_code), 
count(distinct e.employee_code) 
from company c join lead_manager lm on lm.company_code= c.company_code 
join senior_manager sm on sm.company_code= c.company_code 
join manager m on m.company_code= c.company_code 
join employee e on e.company_code= c.company_code 
group by c.company_code,c.founder order by c.company_code;
