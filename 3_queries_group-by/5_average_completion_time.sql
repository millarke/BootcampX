SELECT students.name as student, AVG(assignment_submissions.duration) AS average_assignment_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
WHERE students.end_date IS NULL 
-- JOIN students ON students.id = student_id
GROUP BY student
ORDER BY average_assignment_duration DESC;