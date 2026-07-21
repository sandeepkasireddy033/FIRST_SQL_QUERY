# FIRST_SQL_QUERY

# SQL Practice & Reference Guide

A collection of foundational SQL scripts demonstrating database creation, table management, CRUD operations, constraints, queries, foreign keys, and table joins.

---

## 📌 Topics Covered

- **Database Management**: `CREATE`, `USE`, `DROP`
- **Data Definition Language (DDL)**: `CREATE TABLE`, `ALTER TABLE`, `DROP TABLE`
- **Data Manipulation Language (DML)**: `INSERT INTO`, `UPDATE`
- **Filtering & Logic**: `WHERE`, `AND`, `OR`, `BETWEEN`, `IN`, `NOT IN`, `LIMIT`
- **Sorting & Aggregation**: `ORDER BY` (ASC/DESC), `MAX()`
- **Constraints & Relationships**: `PRIMARY KEY`, `FOREIGN KEY`, `ON UPDATE CASCADE`, `ON DELETE CASCADE`
- **Table Joins**: `INNER JOIN`, `LEFT JOIN`

---

## 🗂️ Script Overview

### 1. Database & Table Lifecycle
Demonstrates creating databases, setting context, inserting data, and dropping objects.

```sql
-- Creating and dropping a database
CREATE DATABASE search;
USE search;
DROP DATABASE search;

-- Table creation with basic data types
CREATE TABLE lighting (
    emp INT PRIMARY KEY,
    age INT NOT NULL,
    salary INT,
    name VARCHAR(50)
);

INSERT INTO lighting VALUES (3, 33, 200000400, 'sandy');

-- Cleanup
DROP TABLE lighting;

CREATE DATABASE thor;
USE thor;

CREATE TABLE word (
    rollno INT PRIMARY KEY,
    name VARCHAR(56),
    marks INT,
    grade CHAR,
    city VARCHAR(70)
);

2. Working with the word Table (Thor Database)
Covers table creation, schema modifications using ALTER TABLE, and basic data manipulation.

CREATE DATABASE thor;
USE thor;

CREATE TABLE word (
    rollno INT PRIMARY KEY,
    name VARCHAR(56),
    marks INT,
    grade CHAR,
    city VARCHAR(70)
);

-- Populating data
INSERT INTO word (rollno, name, marks, grade, city) VALUES
(101, 'sandeep', 99, 'A', 'NAGARKURNOOL'),
(102, 'SAHITHI', 98, 'A', 'PALEM'),
(103, 'CAPTAIN', 90, 'A', 'PALEM'),
(104, 'TONY', 85, 'B', 'TOWN'),
(105, 'NATASHA', 70, 'C', 'PARIS'),
(106, 'HAWKEYE', 65, 'C', 'DELHI'),
(107, 'VERNA', 55, 'F', 'DELHI');

-- Table Alterations
ALTER TABLE word ADD ages INT NOT NULL DEFAULT 20;
ALTER TABLE word RENAME TO studemt;
ALTER TABLE word CHANGE ages stu_ages INT;
ALTER TABLE word DROP COLUMN stu_ages;

3. Querying & Filtering Data

-- Logical Filtering
SELECT * FROM word WHERE marks > 50 AND city = 'DELHI';
SELECT * FROM word WHERE marks > 90 OR city = 'PARIS';
SELECT * FROM word WHERE marks BETWEEN 80 AND 90;
SELECT * FROM word WHERE city IN ('DELHI');
SELECT * FROM word WHERE city NOT IN ('DELHI');

-- Pagination & Sorting
SELECT * FROM word LIMIT 5;
SELECT * FROM word ORDER BY city ASC;
SELECT * FROM word ORDER BY city DESC;
SELECT * FROM word ORDER BY grade ASC;

-- Aggregations
SELECT MAX(marks) FROM word;

4. Foreign Keys & Cascading Actions
Demonstrates primary key/foreign key relationships with cascading updates and deletes.

SQL

CREATE TABLE dept (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO dept VALUES
(13, 'sandeep'),
(10, 'vi');

UPDATE dept SET id = 115 WHERE id = 13;

-- Child table with Foreign Key constraint
CREATE TABLE teachers (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);


5. Table Joins
Demonstrates relational joins between student and course tables.

CREATE TABLE student (
    student_id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO student VALUES
(103, 'fire'),
(104, 'water');

CREATE TABLE course (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    course VARCHAR(100)
);

INSERT INTO course VALUES
(103, 'sandeep', 'english'),
(105, 'jio', 'math'),
(106, 'airtel', 'hindi'),
(109, 'limit', 'science');

-- INNER JOIN
SELECT * 
FROM student AS a
INNER JOIN course AS b
ON a.student_id = b.student_id;

-- LEFT JOIN
SELECT * 
FROM student AS a
LEFT JOIN course AS b
ON a.student_id = b.student_id;
