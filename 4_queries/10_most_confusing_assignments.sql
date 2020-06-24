SELECT assignments.id, assignments.name, assignments.day, assignments.chapter, COUNT(assignment_id) AS total_requests
  FROM assignments
  JOIN assistance_requests ON assignments.id = assignment_id
  GROUP BY assignments.id
  ORDER BY total_requests DESC;

-- what they had below, note fewer uses of assignments. (obvs, whoops)
--   SELECT assignments.id, name, day, chapter, count(assistance_requests) as total_requests
-- FROM assignments
-- JOIN assistance_requests ON assignments.id = assignment_id
-- GROUP BY assignments.id
-- ORDER BY total_requests DESC;