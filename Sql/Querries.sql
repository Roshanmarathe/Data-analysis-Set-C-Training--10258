-- S2a: Average score by department

SELECT
    c.department,
    AVG(a.score) AS avg_score
FROM assessments AS a
JOIN courses AS c
    ON a.course_id = c.course_id
GROUP BY c.department
ORDER BY avg_score ASC;

-- S2b: Underperforming courses

SELECT
    c.course,
    AVG(a.score) AS avg_score
FROM assessments AS a
JOIN courses AS c
    ON a.course_id = c.course_id
GROUP BY c.course
HAVING AVG(a.score) < 60;

-- S2c: Top two batches by average score

SELECT
    batch,
    AVG(score) AS avg_score
FROM assessments
GROUP BY batch
ORDER BY avg_score DESC, batch ASC
LIMIT 2;

-- S3: Data integrity check

SELECT
    c.course_id,
    c.course,
    a.assessment_id
FROM courses AS c
LEFT JOIN assessments AS a
    ON c.course_id = a.course_id
WHERE a.course_id IS NULL;