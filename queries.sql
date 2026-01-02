-- queries.sql
USE university_enrollment;

-- Students enrolled in same course twice
SELECT student_id, section_id, COUNT(*)
FROM enrollments
GROUP BY student_id, section_id
HAVING COUNT(*) > 1;

-- Courses with no students
SELECT c.course_name
FROM courses c
LEFT JOIN course_sections cs ON c.course_id = cs.course_id
LEFT JOIN enrollments e ON cs.section_id = e.section_id
WHERE e.enrollment_id IS NULL;

-- Orphaned enrollments
SELECT *
FROM enrollments e
LEFT JOIN student s ON e.student_id = s.student_id
WHERE s.student_id IS NULL;

-- Number of students per course
SELECT c.course_name, COUNT(e.enrollment_id) AS total_students
FROM courses c
JOIN course_sections cs ON c.course_id = cs.course_id
LEFT JOIN enrollments e ON cs.section_id = e.section_id
GROUP BY c.course_name;

-- Instructor teaching load
SELECT i.first_name, i.last_name, COUNT(cs.section_id) AS sections
FROM instructors i
LEFT JOIN course_sections cs ON i.instructor_id = cs.instructor_id
GROUP BY i.instructor_id;

-- Performance check
EXPLAIN
SELECT *
FROM enrollments e
JOIN course_sections cs
ON e.section_id = cs.section_id;
