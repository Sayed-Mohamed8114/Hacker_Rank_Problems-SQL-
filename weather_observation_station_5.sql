-- to return the largest and the smallest in the lenght in the city column 
(
    select city , length(city) as name_length
    from station 
    order by length(city) asc , city asc 
    limit 1
)
UNION 
(
    select city , length(city) as name_length 
    from station 
    order by length(city) desc , city asc 
    limit 1
);