SQL Keys in MySQL
This repository contains basic SQL Keys with examples and practical queries using MySQL.
1. Primary Key
- Uniquely identifies each row in a table.
- Does not allow duplicate values.
- Does not allow NULL values.
- Only one Primary Key per table.
CREATE TABLE Student (
    Student_ID INT PRIMARY KEY,
    Name VARCHAR(50)
);

INSERT INTO Student VALUES
(1, 'Arun'),
(2, 'Ravi'),
(3, 'Kumar');

SELECT * FROM Student;

2. Unique Key
- Prevents duplicate values in a column.
- Allows NULL values in MySQL.
- Multiple Unique Keys are allowed in a table.
CREATE TABLE Student (
    Student_ID INT PRIMARY KEY,
    Email VARCHAR(100) UNIQUE
);

INSERT INTO Student VALUES
(1, 'arun@gmail.com'),
(2, 'ravi@gmail.com'),
(3, 'kumar@gmail.com');

SELECT * FROM Student;

3. Foreign Key
- Connects two tables.
- Maintains relationships between tables.
- Prevents invalid references to parent table records.
CREATE TABLE Department (
    Dept_ID INT PRIMARY KEY,
    Dept_Name VARCHAR(50)
);

INSERT INTO Department VALUES
(101, 'HR'),
(102, 'IT');

CREATE TABLE Employee (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(50),
    Dept_ID INT,
    FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID)
);

INSERT INTO Employee VALUES
(1, 'Arun', 101),
(2, 'Ravi', 102);

SELECT * FROM Employee;

Key Differences
Primary Key	Unique Key	Foreign Key
Identifies each row	Prevents duplicates	Connects tables
No NULL	Allows NULL	Allows NULL
One per table	Multiple allowed	Multiple allowed


Tools Used
- MySQL
- MySQL Workbench
- SQL
