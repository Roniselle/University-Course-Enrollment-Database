-- sample_data.sql
USE university_enrollment;

INSERT INTO department (department_name)
VALUES ('Computer Science'), ('Mathematics');

INSERT INTO courses (course_code, course_name, department_id)
VALUES ('CS101','Intro to CS',1),
       ('MATH101','Calculus I',2);

INSERT INTO instructors (first_name, last_name, status)
VALUES ('Alice','Reyes','full-time'),
       ('Bob','Cruz','part-time');

INSERT INTO semesters (term, academic_year, start_date, end_date)
VALUES ('1st Semester','2025-2026','2025-08-01','2025-12-15');

INSERT INTO course_sections (course_id, instructor_id, semester_id, section_code, capacity)
VALUES (1,1,1,'A',40),
       (2,2,1,'A',35);

INSERT INTO student (first_name, last_name, email, enrollment_sy)
VALUES ('Juan','Dela Cruz','juan@email.com',2025),
       ('Maria','Santos',NULL,2025);

INSERT INTO enrollments (student_id, section_id, status)
VALUES (1,1,'enrolled'),
       (2,2,'enrolled');
