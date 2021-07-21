SELECT students.name as student, AVG(assignment_submissions.duration) as average_assignment_duration 
FROM students
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
WHERE students.end_date is null
GROUP BY students.name
HAVING AVG(assignment_submissions.duration) < (
SELECT AVG(assignments.duration) as average_assignment_duration 
FROM assignments
JOIN assignment_submissions ON assignments.id = assignment_submissions.assignment_id)  
ORDER BY AVG(assignment_submissions.duration)
