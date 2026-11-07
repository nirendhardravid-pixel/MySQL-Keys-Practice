1. Primary Key
- Used to uniquely identify each row in a table.
- Does not allow duplicate values.
- Does not allow NULL values.
- Only one Primary Key per table.
Syntax:

CREATE TABLE Student (
    Student_ID INT PRIMARY KEY,
    Name VARCHAR(50)
);

2. Unique Key
- Used to ensure that column values are unique.
- Does not allow duplicate values.
- Allows NULL values (MySQL allows multiple NULLs in a UNIQUE column).
- Multiple Unique Keys are allowed in a table.
Syntax:

CREATE TABLE Student (
    Student_ID INT PRIMARY KEY,
    Email VARCHAR(100) UNIQUE
);


Foreign Key – Full Syntax (MySQL)
1. Create Parent table

CREATE TABLE Department (
    Dept_ID INT PRIMARY KEY,
    Dept_Name VARCHAR(50)
);


2. Insert Values

INSERT INTO Department VALUES
(101, 'HR'),
(102, 'IT'),
(103, 'Finance');

3. Create Child table

CREATE TABLE Employee (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(50),
    Dept_ID INT,
    FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID)
);

4. Insert values

INSERT INTO Employee VALUES
(1, 'Arun', 101),
(2, 'Ravi', 102),
(3, 'Kumar', 101);

5. Select Data

SELECT * FROM Department;

SELECT * FROM Employee;



 

 Create Parent Table
CREATE TABLE Department (
    Dept_ID INT PRIMARY KEY,
    Dept_Name VARCHAR(50)
);


 Insert Parent Table Values

 INSERT INTO Department VALUES
(101, 'HR'),
(102, 'IT'),
(103, 'Finance');


Create Child Table

CREATE TABLE Employee (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(50),
    Dept_ID INT,
    FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID)
);

Insert Child Table Values

INSERT INTO Employee VALUES
(1, 'Arun', 101),
(2, 'Ravi', 102),
(3, 'Kumar', 101);

View Tables

SELECT * FROM Department;

SELECT * FROM Employee;


























