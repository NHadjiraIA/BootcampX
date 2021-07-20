SELECT name, id, cohort_id
FROM students
WHERE end_date is null
order by cohort_id

