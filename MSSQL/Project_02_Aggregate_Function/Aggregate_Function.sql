
								-- SQL Project - Aggregate Function :
	-- Write an SQL query to find the second highest salary in the "Salary" table without using the 
										-- LIMIT clause.
----------------------------------------------------------------------------------------------------------
			-- Creating a table 'employee' :

CREATE TABLE employee(        
		emp_id INT,
		emp_name VARCHAR(100),
		department VARCHAR(50),
		salary INT);

SELECT * FROM employee   -- Checking the columns of the table

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
		(10,'James Taylor','Finance',59000);

SELECT * FROM employee

		-- Finding the second highest salary in the "Salary" table without using the LIMIT clause :

			 -- First query finds the maximum salary which is less than the maximum salary   
								-- obtained from the sub-query.
SELECT        
	MAX(salary) AS second_highest_salary  
FROM employee 

WHERE salary <(       
	SELECT MAX(salary)
	FROM employee
	);
