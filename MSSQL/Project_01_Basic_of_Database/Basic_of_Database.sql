
							-- SQL Project : Basic of Database 
		-- Write an SQL query to find the top 5 customers with the highest total order amounts.
----------------------------------------------------------------------------------------------------------
							-- Creating table - 'customer_table' :

CREATE TABLE customer_table(
	customer_id INT,
	customer_name VARCHAR(50),  -- VARCHAR mean Variable Character and 50 is length of the entry
	region VARCHAR(50),
	order_amount DECIMAL(10, 2) -- We can have a decimal number with a maximal total precision of 
	);                          -- 10 digits. Two (2) of them after the decimal point and eight (8) before

SELECT * FROM customer_table;  -- Checking the columns

						-- Inserting data/rows into 'customer_table' :

INSERT INTO customer_table(customer_id, customer_name, region, order_amount)
VALUES 
		(1, 'Sarah Brown', 'North', 200.00),
		(2, 'Jane Smith', 'South', 75.20),
		(3, 'Alice Johnson', 'East', 200.00),
		(4, 'Bob Williams', 'West', 150.75),
		(5, 'Emily Brown', 'North', 300.25),
		(6, 'Michael Davis', 'South', 50.00),
		(7, 'Sarah Wilson', 'East', 175.30),
		(8, 'David Martinez', 'West', 125.90),
		(9, 'Olivia Miller', 'North', 80.60),
		(10, 'James Taylor', 'South', 220.40);

SELECT * FROM customer_table

			-- Again checking top 5 customers with the highest total order amounts :

SELECT TOP 5
	customer_id, 
	customer_name,
	SUM(order_amount) AS total_order_amount
FROM
	customer_table
GROUP BY
	customer_id, customer_name
ORDER BY
	total_order_amount DESC; 

				-- Now as we can see 'Jane Smith' has the highest order amount.

						-- Inserting another row to our table :

INSERT INTO customer_table(customer_id, customer_name, region, order_amount)
VALUES
		(2, 'Jane Smith', 'South', 321.45);

SELECT * FROM customer_table  -- Checking the table again :
	
				-- Again checking top 5 customers with the highest total order amounts :

SELECT TOP 5
	customer_id, 
	customer_name,
	SUM(order_amount) AS total_order_amount
FROM
	customer_table
GROUP BY
	customer_id, customer_name
ORDER BY
	total_order_amount DESC;

