SELECT  day, count(id) as number_of_assignments , sum (duration) as duraton
FROM assignments 
GROUP BY day
ORDER BY day;

