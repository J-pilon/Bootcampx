-- Get the cohort with the longest average duration of assistance requests.

-- The same requirements as the previous query, but only return the single row with the longest average.

SELECT cohorts.name AS name, AVG(completed_at-started_at) AS longest_average_request
FROM assistance_requests 
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY longest_average_request DESC
LIMIT 1;
