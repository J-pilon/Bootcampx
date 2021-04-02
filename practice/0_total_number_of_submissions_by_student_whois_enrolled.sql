-- SELECT (
--   SELECT count(assignments)
--   FROM assignments
-- )-count(assignment_submissions) as total_incomplete
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id
-- WHERE students.name = 'Ibrahim Schimmel';



-- SELECT count(students)
-- FROM students
-- JOIN cohorts on cohorts.id = cohort_id
-- GROUP BY cohorts;

-- vvvvv doesnt work! cant nest agregate functions
-- SELECT avg(count(students))
-- FROM students
-- JOIN cohorts on cohorts.id = cohort_id
-- GROUP BY cohorts;

-- vvvvvv does work: this is a nest table
SELECT avg(total_students) as average_students
FROM (
  SELECT count(students) as total_students
  FROM students
  JOIN cohorts on cohorts.id = cohort_id
  GROUP BY cohorts
) as totals_table;