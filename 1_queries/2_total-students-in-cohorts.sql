SELECT count(*)
  FROM students
  WHERE cohort_id <= 3;


-- what they had below
-- SELECT count(id)
-- FROM students 
-- WHERE cohort_id IN (1,2,3);