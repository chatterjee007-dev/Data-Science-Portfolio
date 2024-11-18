
------------------------------------------SQL PROJECT : FOREIGN KEY---------------------------------------------

-- The objective of this project is to analyze and organize company data using SQL queries. Based on the given 
-- table schemas for company, lead_manager, senior_manager, manager, and employee, the task is to retrieve 
-- essential company details. Specifically, we need to print each company_code along with the founder's name 
-- and calculate the total number of lead managers, senior managers, managers, and employees per company. The 
-- output should be ordered by the company_code in ascending order.

-- The project involves:

-- 1. Using foreign key relationships between the tables to accurately count personnel in each category.
-- 2. Writing subqueries to derive the total counts for each type of manager and employee.
-- 3. Ensuring data integrity and appropriate ordering by company_code.

----------------------------------------------------------------------------------------------------------------

-- To achieve the desired output, we need to create five tables (company, lead_manager, senior_manager, 
-- manager, employee) in a user database 'Test_Database' and establish relationships between them based on  
-- company_code. After setting up the tables, we will write a query to count the total number of managers  
-- and employees and display the information by company_code.

--------------------------------------------- Step 1: Creating Tables -----------------------------------------
-- We will create tables based on the schemas you provided, and include foreign key relationships between them.

-- SQL Code:

-- 1. Creating the 'company' table :
CREATE TABLE company (
    company_code VARCHAR(10) PRIMARY KEY, -- Unique identifier for each company
    founder CHAR(100) -- Name of the company's founder
);

-- 2. Creating the 'lead_manager' table :
CREATE TABLE lead_manager (
    lead_manager_code VARCHAR(10) PRIMARY KEY, -- Unique identifier for each lead manager
    company_code VARCHAR(10), -- Foreign key referencing the 'company' table
    FOREIGN KEY (company_code) REFERENCES company(company_code) -- Establishing the foreign key relationship
);

-- 3. Creating the 'senior_manager' table :
CREATE TABLE senior_manager (
    senior_manager_code VARCHAR(10) PRIMARY KEY, -- Unique identifier for each senior manager
    lead_manager_code VARCHAR(10), -- Foreign key referencing the 'lead_manager' table
    company_code VARCHAR(10), -- Foreign key referencing the 'company' table
    FOREIGN KEY (lead_manager_code) REFERENCES lead_manager(lead_manager_code), -- Defining the foreign key relationship with 'lead_manager'
    FOREIGN KEY (company_code) REFERENCES company(company_code) -- Foreign key to the 'company' table
);

-- 4. Creating the 'manager' table :
CREATE TABLE manager (
    manager_code VARCHAR(10) PRIMARY KEY, -- Unique identifier for each manager
    senior_manager_code VARCHAR(10), -- Foreign key referencing the 'senior_manager' table
    lead_manager_code VARCHAR(10), -- Foreign key referencing the 'lead_manager' table
    company_code VARCHAR(10), -- Foreign key referencing the 'company' table
    FOREIGN KEY (senior_manager_code) REFERENCES senior_manager(senior_manager_code), -- Foreign key relationship with 'senior_manager'
    FOREIGN KEY (lead_manager_code) REFERENCES lead_manager(lead_manager_code), -- Foreign key relationship with 'lead_manager'
    FOREIGN KEY (company_code) REFERENCES company(company_code) -- Foreign key relationship with 'company'
);

-- 5. Creating the 'employee' table :
CREATE TABLE employee (
    employee_code VARCHAR(10) PRIMARY KEY, -- Unique identifier for each employee
    manager_code VARCHAR(10), -- Foreign key referencing the 'manager' table
    senior_manager_code VARCHAR(10), -- Foreign key referencing the 'senior_manager' table
    lead_manager_code VARCHAR(10), -- Foreign key referencing the 'lead_manager' table
    company_code VARCHAR(10), -- Foreign key referencing the 'company' table
    FOREIGN KEY (manager_code) REFERENCES manager(manager_code), -- Foreign key relationship with 'manager'
    FOREIGN KEY (senior_manager_code) REFERENCES senior_manager(senior_manager_code), -- Foreign key relationship with 'senior_manager'
    FOREIGN KEY (lead_manager_code) REFERENCES lead_manager(lead_manager_code), -- Foreign key relationship with 'lead_manager'
    FOREIGN KEY (company_code) REFERENCES company(company_code) -- Foreign key relationship with 'company'
);

---------------------------------------- Step 2: Inserting Sample Data -----------------------------------------

-- Here we’ll add some sample data into each of these tables to test the query.

-- Inserting data into 'company' table
INSERT INTO company (company_code, founder) VALUES ('C001', 'Alice'), ('C002', 'Bob'), ('C003', 'Charlie');

-- Inserting data into 'lead_manager' table
INSERT INTO lead_manager (lead_manager_code, company_code) VALUES ('LM001', 'C001'), ('LM002', 'C002'), ('LM003', 'C003');

-- Inserting data into 'senior_manager' table
INSERT INTO senior_manager (senior_manager_code, lead_manager_code, company_code)
VALUES ('SM001', 'LM001', 'C001'), ('SM002', 'LM002', 'C002'), ('SM003', 'LM003', 'C003');

-- Inserting data into 'manager' table
INSERT INTO manager (manager_code, senior_manager_code, lead_manager_code, company_code)
VALUES ('M001', 'SM001', 'LM001', 'C001'), ('M002', 'SM002', 'LM002', 'C002'), ('M003', 'SM003', 'LM003', 'C003');

-- Inserting data into 'employee' table
INSERT INTO employee (employee_code, manager_code, senior_manager_code, lead_manager_code, company_code)
VALUES ('E001', 'M001', 'SM001', 'LM001', 'C001'), ('E002', 'M002', 'SM002', 'LM002', 'C002'), ('E003', 'M003', 'SM003', 'LM003', 'C003');

------------------------------------------- Step 3: Writing the Query ------------------------------------------

-- To fulfill the requirement, we will count the number of lead managers, senior managers, managers, and 
-- employees for each company, and output them along with the company_code and founder.

-- SQL Query :
-- Query to retrieve company details and counts of managers and employees :

-- Explanation :
-- SELECT : We are selecting the company_code, founder, and the total count of lead managers, senior managers, 
         -- managers, and employees.
-- Subqueries : For each type of personnel (lead manager, senior manager, manager, and employee), we use a 
             -- subquery to count how many records exist for that company_code.
-- FROM company c : The main table is the company table, where we are retrieving the company details.
-- ORDER BY c.company_code ASC : The result is ordered by company_code in ascending order.

SELECT 
    c.company_code, 
    c.founder,
    (SELECT COUNT(*) FROM lead_manager lm WHERE lm.company_code = c.company_code) AS total_lead_managers,
    (SELECT COUNT(*) FROM senior_manager sm WHERE sm.company_code = c.company_code) AS total_senior_managers,
    (SELECT COUNT(*) FROM manager m WHERE m.company_code = c.company_code) AS total_managers,
    (SELECT COUNT(*) FROM employee e WHERE e.company_code = c.company_code) AS total_employees
FROM 
    company c
ORDER BY 
    c.company_code ASC; -- Order the result by company_code in ascending order

