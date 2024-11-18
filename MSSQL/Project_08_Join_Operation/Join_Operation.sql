
--------------------------------------- MSSQL PROJECT : JOIN OPERATION -----------------------------------------

-- In this project, we will explore various types of SQL join operations using two tables, emp_table1 and 
-- emp_table2. The first table, emp_table1, contains employee information, including their IDs, names, and 
-- salaries. The second table, emp_table2, includes the employee IDs along with their respective departments.

-------------------------------- We will perform the following join operations ---------------------------------

-- Left Join : Retrieves all records from the left table and the matched records from the right table. 
            -- If there is no match, NULL values will be returned for columns from the right table.

-- Right Join : Retrieves all records from the right table and the matched records from the left table. 
             -- If there is no match, NULL values will be returned for columns from the left table.

-- Inner Join : Retrieves records that have matching values in both tables.

-- Full Outer Join : Retrieves all records when there is a match in either left or right table records. 
                  -- If there is no match, NULL values will be returned.

-- Self Join : Joins a table with itself to compare rows within the same table.

-- Cartesian Join : Combines all rows from the first table with all rows from the second table, resulting 
                 -- in a Cartesian product.

----------------------- Let's start by creating the tables and inserting sample data ---------------------------

------------------------------- Step 1 : Creating the first table emp_table1 -----------------------------------

CREATE TABLE emp_table1 (
    emp_id INT PRIMARY KEY,  -- Employee ID (Primary Key)
    Name CHAR(50),           -- Employee Name
    Salary INT               -- Employee Salary
);

-- Creating the second table emp_table2 :

CREATE TABLE emp_table2 (
    emp_id INT PRIMARY KEY,   -- Employee ID (Primary Key)
    department CHAR(50)       -- Employee Department
);

---------------------------------- Step 2: Inserting sample data into emp_table1 -------------------------------

INSERT INTO emp_table1 (emp_id, Name, Salary) VALUES
(1, 'Alice', 50000),
(2, 'Bob', 60000),
(3, 'Charlie', 55000),
(4, 'David', 70000),
(5, 'Eve', 65000);

-- Inserting sample data into emp_table2 :

INSERT INTO emp_table2 (emp_id, department) VALUES
(1, 'HR'),
(2, 'Finance'),
(3, 'IT'),
(6, 'Marketing');  -- emp_id 6 does not exist in emp_table1

----------------------------------- Step 3: Performing SQL Join Operations ------------------------------------

-- 1. Left Join : Retrieve all employees and their departments

SELECT 
    e.emp_id, 
    e.Name, 
    e.Salary, 
    d.department
FROM 
    emp_table1 e
LEFT JOIN 
    emp_table2 d ON e.emp_id = d.emp_id;

-- 2. Right Join: Retrieve all departments and their employees 

SELECT 
    e.emp_id, 
    e.Name, 
    e.Salary, 
    d.department
FROM 
    emp_table1 e
RIGHT JOIN 
    emp_table2 d ON e.emp_id = d.emp_id;

-- 3. Inner Join: Retrieve only employees with departments

SELECT 
    e.emp_id, 
    e.Name, 
    e.Salary, 
    d.department
FROM 
    emp_table1 e
INNER JOIN 
    emp_table2 d ON e.emp_id = d.emp_id;

-- 4. Full Outer Join: Retrieve all employees and departments

SELECT 
    e.emp_id, 
    e.Name, 
    e.Salary, 
    d.department
FROM 
    emp_table1 e
FULL OUTER JOIN 
    emp_table2 d ON e.emp_id = d.emp_id;

-- 5. -- Self Join: Retrieve employees with the same salary

SELECT 
    e1.emp_id AS emp_id_1, 
    e1.Name AS Name_1, 
    e1.Salary, 
    e2.emp_id AS emp_id_2, 
    e2.Name AS Name_2
FROM 
    emp_table1 e1
INNER JOIN 
    emp_table1 e2 ON e1.Salary = e2.Salary
WHERE 
    e1.emp_id <> e2.emp_id; -- To avoid matching the same employee

-- 6. Cartesian Join: Combine all rows from both tables

SELECT 
    e.emp_id, 
    e.Name, 
    e.Salary, 
    d.emp_id AS dept_emp_id, 
    d.department
FROM 
    emp_table1 e
CROSS JOIN 
    emp_table2 d;

------------------------------------------------- Conclusion ---------------------------------------------------

-- This project demonstrates the different SQL join operations, providing a comprehensive understanding of how
-- they function. Each join type serves specific purposes and yields different results based on the relationship
-- between the two tables. This knowledge is crucial for effective database management and querying in various 
-- applications.



















