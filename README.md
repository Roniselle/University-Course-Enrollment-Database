# University-Course-Enrollment-Database
A relational database system designed to manage students, courses, instructors, departments, semesters, and enrollments for a university. This project demonstrates ERD design, SQL implementation, data validation, reporting, and performance-aware querying using MySQL.

## 📌 Project Overview

Universities require structured systems to manage course offerings and student enrollments.  
This project solves common issues such as:
- Duplicate enrollments
- Orphaned records
- Inconsistent data
- Slow reporting queries

The database is **normalized to Third Normal Form (3NF)** and enforces **data integrity** using constraints and foreign keys.

---

## 🧩 Entity Relationship Diagram (ERD)

**Main Entities**
- Student
- Department
- Courses
- Instructors
- Semesters
- Course_Sections
- Enrollments

**Key Relationships**
- Student **1:M** Enrollments
- Course **1:M** Course_Sections
- Semester **1:M** Course_Sections
- Instructor **1:M** Course_Sections
- Department **1:M** Courses

> Enrollments resolves the **many-to-many** relationship between students and course sections.

---

## 🛠️ Technologies Used

- **Database:** MySQL 8.x
- **Modeling:** ERD (Crow’s Foot notation)
- **Language:** SQL
- **Tools:** MySQL Workbench / phpMyAdmin

---

## 🗄️ Database Schema

### Tables Included
| Table | Description |
|------|------------|
| student | Stores student information |
| department | Academic departments |
| courses | Course catalog |
| instructors | Faculty data |
| semesters | Academic terms |
| course_sections | Course offerings |
| enrollments | Student enrollments |

---

## 🔐 Constraints & Data Integrity

- **Primary Keys** for unique identification
- **Foreign Keys** to enforce relationships
- **UNIQUE** constraints for emails
- **ENUM** for controlled status values
- **CHECK** constraints for valid data
- **CASCADE / RESTRICT** delete rules

These constraints prevent invalid or inconsistent data.

---

## 🧪 Sample Data

The database includes sample data for:
- Departments
- Courses
- Instructors
- Students
- Course Sections
- Enrollments

Data is inserted in the correct order to avoid foreign key errors.

---

## 🔍 Data Review Queries

The project includes queries to:
- Detect students enrolled in the same course twice
- Identify courses with no enrolled students
- Find orphaned enrollments
- Validate missing or invalid email addresses

These queries ensure **data quality and integrity**.

---

## 📊 Reporting Queries

Reporting features include:
- Number of students per course
- Enrollment count per department
- Instructor teaching load

These queries support academic and administrative decision-making.

---

## ⚡ Performance Considerations

- Indexes added to foreign key columns
- Optimized JOIN-heavy queries
- Query execution analysis using `EXPLAIN`

This ensures acceptable performance even as data grows.

---
