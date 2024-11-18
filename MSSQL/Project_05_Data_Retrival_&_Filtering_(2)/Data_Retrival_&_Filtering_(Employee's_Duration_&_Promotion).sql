
							-- SQL Project - Data Retrival & Filtering :
		-- Write an SQL query to find the employees who have been with the company for more
						-- than 3 years and have not received a promotion.
-----------------------------------------------------------------------------------------------------------

			-- Creating the previous project's table 'employee' :

CREATE TABLE employee(        
		emp_id INT,
		emp_name VARCHAR(100),
		department VARCHAR(50),
		salary INT);

			-- Inserting data in the table :

INSERT INTO employee(emp_id, emp_name, department, salary)
VALUES
		(1,'Ria Hall','HR',50000),
		(2,'Jane Smith','Sales',60000),
		(3,'Alice Johnson','IT',55000),
		(4,'Bob Williams','Marketing',52000),
		(5,'Emily Brown','Finance',58000),
		(6,'Michael Davis','HR',51000),
		(7,'Sarah Wilson','Sales',63000),
		(8,'David Martinez','IT',56000),
		(9,'Olivia Miller','Marketing',52500),
		(10,'James Taylor','Finance',59000),
		(3,'Alice Johnson','HR',65000),
		(2,'Jane Smith','Marketing',55000.00),
		(4,'Bob Williams','HR',58000.00),
		(1,'Ria Hall','Finance',55000.00),
		(3,'Alice Johnson','Marketing',57000.00),
		(1,'Ria Hall','Sales',62000.00);

		-- Altering the table to add the column 'duration' :

ALTER TABLE employee
ADD duration INT;

SELECT * FROM employee  -- Checking the table

			-- Inserting data in column 'duration' based on below conditions :

UPDATE employee
SET duration = CASE
WHEN emp_id in (1,3,4,5,8) then 4
ELSE 2
END;

SELECT * FROM employee  

		-- Query to find the employees who have been with the company for more than 3 years

SELECT 
	emp_name, 
	emp_id, 
	department
FROM employee
WHERE duration > 3

					-- Now for promotion we need column salary increment.
-- Query to isolate all the people who have not received salary increment despite working in the comapny
								-- for more than 3 years.

WITH emp_change AS(
SELECT 
	emp_id,
	emp_name,
	department,
	duration,
	lag(department) OVER (PARTITION BY  emp_id ORDER BY duration) AS prev_dept
FROM employee)

SELECT 
	EC.emp_id,
	EC.emp_name,
	EC.department
FROM emp_change EC
WHERE EC.prev_dept IS NOT NULL
	AND EC.prev_dept != EC.department
	AND EC.duration > 3