SELECT distinct CITY from STATION 
where lower(substring(CITY,length(CITY),1)) in ('a','e','o','u','i');

