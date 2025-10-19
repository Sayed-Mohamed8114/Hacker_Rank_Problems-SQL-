select CITY FROM STATION WHERE 
LOWER(RIGHT(CITY,1)) IN ('a','e','o','u','i')
AND LOWER(LEFT(CITY,1)) IN ('a','e','o','u','i');