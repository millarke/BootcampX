SELECT teachers.name as teacher, cohorts.name as cohort, count(assistance_requests) as total_assistances
  FROM teachers
  JOIN assistance_requests ON teacher_id = teachers.id
  JOIN students ON student_id = students.id
  JOIN cohorts ON cohort_id = cohorts.id
  WHERE cohorts.name = 'JUL02'
  GROUP BY teachers.name, cohorts.name
  ORDER BY teacher;


-- mine is below, and wrong, i don't remember being able to GROUP BY two things...
-- SELECT teachers.name AS teacher, cohorts.name AS cohort, COUNT(assistance_requests) AS total_assistances
--   FROM teachers
--   JOIN assistance_requests ON teacher_id = teachers.id
--   JOIN students ON student_id = students.id
--   JOIN cohorts ON cohort_id = cohorts.id
--   WHERE cohorts.name = 'JUL02'
--   GROUP BY teachers.name
--   ORDER BY teacher;