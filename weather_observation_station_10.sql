select distinct city from station 
WHERE
lower(right(city,1)) not in ('a','e','o','i','u');