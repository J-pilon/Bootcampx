SELECT students.name, 
students.start_date AS student_start_date, 
cohorts.name, 
cohorts.start_date AS cohort_start_date
FROM students 
INNER JOIN cohorts 
ON cohort_id = cohorts.id
ORDER BY cohort_start_date;