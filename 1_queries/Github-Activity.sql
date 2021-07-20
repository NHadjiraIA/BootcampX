SELECT name, id, phone
FROM students
WHERE github is null 
AND end_date IS NOT NULL;

