SELECT assignments.id AS id, assignments.day AS day, assignments.chapter AS chapter, assignments.name AS name, COUNT(assistance_requests.*) AS total_requests
FROM assistance_requests
JOIN assignments ON assignment_id = assignments.id
GROUP BY assignments.id
ORDER BY COUNT(assistance_requests.*) DESC;