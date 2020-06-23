SELECT cohorts.name AS cohort_name, count(students.cohort_id) AS student_count
FROM cohorts
JOIN students ON cohorts.id = cohort_id
GROUP BY cohort_name
HAVING count(students) >= 18
-- they have (students.*)
ORDER BY student_count;