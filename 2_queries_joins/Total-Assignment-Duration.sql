SELECT sum(assignment_submissions.duration) as total
FROM assignment_submissions
JOIN students ON students.id = assignment_submissions.student_id 
WHERE students.name = 'Ibrahim Schimmel';

