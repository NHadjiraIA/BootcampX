SELECT sum(assignment_submissions.duration) as total
FROM assignment_submissions
JOIN students ON students.id = assignment_submissions.student_id 
JOIN cohorts ON cohorts.id = students.cohort_id
WHERE students.name = 'Ibrahim Schimmel';

