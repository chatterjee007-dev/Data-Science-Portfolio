
								-- SQL Project - Windows Function :
		-- Write an SQL query using Windows function to identify the employees who have a salary
				-- higher than the average salary of their respective departments.
----------------------------------------------------------------------------------------------------------------

			-- Creating the previous project's table 'employee' :

CREATE TABLE employee(        
		emp_id INT,
		emp_name VARCHAR(100),
		department VARCHAR(50),
		salary INT);

			-- Inserting data in the table :

INSERT INTO employee(emp_id, emp_name, department, salary)
VALUES
		(60200577, 'Aarav Singh', 'HR', 55000),
		(60200223, 'Riya Sharma', 'RND', 71000),
		(60200689, 'Krish Patel', 'accounts', 66000),
		(60200193, 'Myra Gupta', 'sales', 59000),
		(60200544, 'Kabir Verma', 'accounts', 61000),
		(60200712, 'Zoya Khan', 'HR', 53000),
		(60200499, 'Advait Mehta', 'RND', 73000),
		(60200801, 'Avani Reddy', 'sales', 59000),
		(60200955, 'Anaya Joshi', 'accounts', 61000),
		(60200342, 'Reyansh Malhotra', 'RND', 56000),
		(60200677, 'Saanvi Choudhary', 'HR', 78000),
		(60200889, 'Atharv Shah', 'accounts', 53000),
		(60200466, 'Diya Kapoor', 'sales', 67000),
		(60200233, 'Aarohi Desai', 'HR', 52000),
		(60200911, 'Ishaan Banerjee', 'sales', 79000),
		(60200598, 'Siya Bhatnagar', 'RND', 53000),
		(60200047, 'Aryan Singhania', 'accounts', 61000),
		(60200765, 'Ishika Khanna', 'HR', 72000),
		(60200190, 'Vihaan Oberoi', 'sales', 59000),
		(60200322, 'Aradhya Mehra', 'RND', 68000);

SELECT * FROM employee
-----------------------------------------------------------------------------------------------------------------
			-- Query identify the employees who have a salary higher than the average salary of 
									-- their respective departments.
------------------------------------------------------------------------------------------------------------------

								 -- Creating a Common Table Expression :

WITH dep_avg AS(
		SELECT emp_id, emp_name, department, salary,
		AVG(salary) OVER (PARTITION BY department) AS avg_dept_salary
		FROM employee
		)

						-- Selecting these values from the common table expression :

SELECT emp_id, emp_name, department, salary, avg_dept_salary
FROM dep_avg
WHERE salary > avg_dept_salary;



















