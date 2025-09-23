# get the difference between the distinct cities and the all cities 
select (count(city)-count(distinct(city))) from station ;