SELECT AVG(total_durations) as average_total_duration
FROM(
SELECT sum (assistance_requests.completed_at - assistance_requests.started_at )as total_durations
FROM assistance_requests
JOIN students ON assistance_requests.student_id = students.id
JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY total_durations DESC) as total_durations;

