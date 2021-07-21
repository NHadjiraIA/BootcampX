SELECT assignments.id, name, chapter, day, sum (assistance_requests.id) as total_assistance
FROM assignments
JOIN assistance_requests ON assistance_requests.assignment_id = assignments.id
GROUP BY assignments.id
ORDER BY total_assistance DESC;

