
							-- SQL Project - Data Retrival & Filtering :
		-- Write an SQL query to retrieve the names of employees who have worked in at least
                                  -- three different departments.
-----------------------------------------------------------------------------------------------------------
			-- Creating a table 'employee' :

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
		(10,'James Taylor','Finance',59000);

SELECT * FROM employee  -- Checking the table

			-- Inserting more data into the table where employees shifted the department :

INSERT INTO employee(emp_id, emp_name, department, salary)
VALUES
		 (3,'Alice Johnson','HR',65000),
		 (2,'Jane Smith','Marketing',55000.00),
		 (4,'Bob Williams','HR',58000.00),
		 (1,'Ria Hall','Finance',55000.00),
		 (3,'Alice Johnson','Marketing',57000.00),
		 (1,'Ria Hall','Sales',62000.00);

SELECT * FROM employee  -- Checking the table

		-- Writing a query in order to retrieve the names of employees who have worked in 
							-- atleast three different departments
----------------------------------------------------------------------------------------------------------

SELECT emp_name
FROM(
	SELECT emp_id, emp_name, COUNT(distinct department)	as num_departments
	from employee
	group by emp_id, emp_name
	)
	AS multiple_departments
WHERE num_departments >= 3