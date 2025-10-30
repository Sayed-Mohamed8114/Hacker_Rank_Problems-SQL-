-- this move to create some projects seberatly 
WITH ProjectGroups AS (
    SELECT Start_Date,
        End_Date,
        -- date_ADD gave number to every start day
        -- and in the query we will substract the number by 
        -- date_add from all start date 
        DATE_ADD(
            Start_Date,
            INTERVAL - ROW_NUMBER() OVER (
                ORDER BY Start_Date
            ) DAY
        ) AS group_id
    FROM Projects
) -- the second part is to collect all the tasks that belong to the sane
SELECT MIN(Start_Date) AS project_start_date,
    MAX(End_Date) AS project_end_date
FROM ProjectGroups
GROUP BY group_id -- will collect the tasks by group id 
ORDER BY -- now we will arange by the duration of the project and date if help us to do this 
    DATEDIFF(MAX(End_Date), MIN(Start_Date)),
    project_start_date;
-- if the durations got equal then arrange by the start date