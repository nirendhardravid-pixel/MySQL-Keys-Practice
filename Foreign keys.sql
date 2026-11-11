CREATE TABLE Department (
    Dept_ID INT PRIMARY KEY,
    Dept_Name VARCHAR(50)
);

INSERT INTO Department VALUES
(101, 'HR'),
(102, 'IT'),
(103, 'Sales');

CREATE TABLE Employee (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(50),
    Dept_ID INT,
    FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID)
);

INSERT INTO Employee VALUES
(1, 'Arun', 101),
(2, 'Ravi', 102),
(3, 'Kumar', 103);

select * from employee;





CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(50)
);


insert into customer(customer_id,customer_name)
values(101,"Dravid"),
      (102,"Sachin");

select * from customer;

CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Order_Date DATE,
    Customer_ID INT,
  FOREIGN KEY (customer_id)  references customer(customer_id)
);

insert into Orders(Order_ID, Order_Date, Customer_ID)
values(1,"2026-02-24",101),
      (2,"2026-02-25",102);

select * from orders;


CREATE TABLE Course (
    Course_ID INT PRIMARY KEY,
    Course_Name VARCHAR(50)
);

insert into course(course_id,Course_Name)
values(101,"FSP"),
      (102,"DS"),
      (103,"DA");

select * from  course;

CREATE TABLE Students (
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(50),
    Course_ID INT,
    FOREIGN KEY (Course_id) references course(course_id)
);

insert into students(student_id,student_name,course_id)
values(1,"Dravid",101),
      (2,"sachin",102),
      (3,"niren",103);

select * from students;



CREATE TABLE Customers (
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(50),
    City VARCHAR(50)
);

insert into customers(customer_id,customer_name,city)
values(101,"Arun","Chennai"),
      (102,"Ravi","Bangalore"),
      (103,"kumar","coimbatore");

select * from customers;

drop table orders;


CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Product_Name VARCHAR(50),
    Amount DECIMAL(10,2),
    customer_id INT,
    foreign key (Customer_id) references CUSTOMERS(Customer_id)
);

INSERT INTO Orders
(Order_ID, Product_Name, Amount, Customer_id)
VALUES
(1, 'Laptop', 55000, 101),
(2, 'Mobile', 20000, 102),
(3, 'Tablet', 15000, 101),
(4, 'Monitor', 12000, 103);

select * from orders;

CREATE TABLE Projects (
    Project_ID INT PRIMARY KEY,
    Project_Name VARCHAR(50),
    Location VARCHAR(50)
);

insert into projects(Project_ID,Project_Name,Location)
values(201,"Banking app","chennai"),
      (202,"Hr analytics","Bangalore"),
      (203,"sales Dashborad","Hyderabad");
      
select * from projects;

CREATE TABLE Employees (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(50),
    Salary INT,
    Project_ID INT,
    FOREIGN KEY (Project_ID)
    REFERENCES Projects(Project_ID)
);

insert into employees(Emp_ID,Emp_Name,Salary,Project_ID)
values(1,"Karthick",30000,201),
      (2,"priya",35000,202),
      (3,"arun",40000,203),
      (4,"rahul",32000,201);

select * from employees;













