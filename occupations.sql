select 
max(case when Occupation = 'Doctor' then name end) as Doctor,
max(case when Occupation = 'Professor'then name end) as Professor,
max(case when Occupation = 'Singer' then name end) as Singer,
max(case when Occupation = 'Actor' then name end) as Actor
from (
    select name, Occupation,
    row_number() over(PARTITION BY Occupation order by name)as rn 
    from OCCUPATIONS
)AS ranked 
group by rn 
order by rn ;