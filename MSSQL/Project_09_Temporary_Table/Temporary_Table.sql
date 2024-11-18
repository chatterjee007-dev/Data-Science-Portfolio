
------------------------------------- MSSQL PROJECT : TEMPORARY TABLE ------------------------------------------

-- In this project, we will explore the use of temporary tables in SQL Server, which are instrumental for 
-- storing intermediate results during query execution. Temporary tables are useful for various operations, 
-- such as storing data that needs to be manipulated before final output or performing complex calculations. 
-- There are two types of temporary tables in SQL Server: Local Temporary Tables and Global Temporary Tables.

-- Local Temporary Tables are created with a single # prefix and are visible only to the session that created 
-- them. They are automatically dropped when the session ends.

-- Global Temporary Tables are created with a ## prefix and are accessible to any session. They remain available 
-- until the session that created them is closed and all other sessions referencing them are also closed.

-- This project will include the following steps:

	-- 1. Creating a Local Temporary Table and inserting values into it.
	-- 2. Creating a Global Temporary Table and inserting values into it.
	-- 3. Deleting both types of temporary tables.

---------------------------------- Step 1: Creating a Local Temporary Table -----------------------------------
------------------------ A local temporary table is created using the '#' prefix ------------------------------

CREATE TABLE #LocalTempTable (
    emp_id INT,          -- Employee ID
    Name VARCHAR(50),    -- Employee Name
    Salary INT           -- Employee Salary
);

------------------------------ Step 2: Inserting values into the Local Temporary Table -------------------------

INSERT INTO #LocalTempTable (emp_id, Name, Salary) VALUES
(1, 'Alice', 50000),
(2, 'Bob', 60000),
(3, 'Charlie', 55000);

----------------------------------------- Verifying the inserted values ----------------------------------------

SELECT * FROM #LocalTempTable;

------------------------------------ Step 3 : Creating a Global Temporary Table --------------------------------
-------------------------- A global temporary table is created using the '##' prefix ---------------------------

CREATE TABLE ##GlobalTempTable (
    emp_id INT,          -- Employee ID
    Name VARCHAR(50),    -- Employee Name
    Salary INT           -- Employee Salary
);

----------------------------- Step 4: Inserting values into the Global Temporary Table -------------------------

INSERT INTO ##GlobalTempTable (emp_id, Name, Salary) VALUES
(4, 'David', 70000),
(5, 'Eve', 65000);

------------------------------------------ Verifying the inserted values ---------------------------------------

SELECT * FROM ##GlobalTempTable;

------------------------------------ Step 5: Deleting the Local Temporary Table --------------------------------
----------------------- Local temporary tables are automatically dropped when the session ends -----------------
------------------------------------ But we can explicitly drop them if needed ---------------------------------

DROP TABLE IF EXISTS #LocalTempTable;  -- This will drop the local temp table

-- Confirms deletion
-- Attempting to select from the deleted table will result in an error
-- SELECT * FROM #LocalTempTable; <-- Uncommenting this line will result in an error

------------------------------------ Step 6: Deleting the Global Temporary Table -------------------------------
---------------------- Similar to local temp tables, we can drop global temp tables explicitly -----------------

DROP TABLE IF EXISTS ##GlobalTempTable;  -- This will drop the global temp table

-- Confirms deletion
-- Attempting to select from the deleted table will result in an error
-- SELECT * FROM ##GlobalTempTable; -- Uncommenting this line will result in an error

--------------------------------------------------- Conclusion -------------------------------------------------

-- In this project, we have successfully demonstrated how to create, use, and delete both Local and Global 
-- Temporary Tables in SQL Server. Temporary tables are a powerful feature for managing intermediate data, 
-- allowing for efficient data manipulation and processing within a session. Understanding how to work with 
-- these tables is crucial for optimizing database performance and ensuring effective data management.






