
--------------------------------------- MSSQL Project - ER Diagram ---------------------------------------------

-- Introduction :

	-- This project focuses on converting an Entity-Relationship (ER) diagram into a set of relational tables 
	-- using Microsoft SQL Server (MSSQL). The ER diagram serves as a blueprint for the database structure, 
	-- detailing entities, their attributes, and relationships. Transforming this diagram into tables ensures 
	-- efficient data organization and facilitates effective querying. 

------------------------------------------- ER Diagram Description ---------------------------------------------

-- Our ER diagram represents a simple banking system with the following components :

	-- 1. Customer: Attributes include C_name, C_city, and C_street.

	-- 2. Account: Attributes include Ac_no and Balance.

	-- 3. Branch: Attributes include b_name, b_city, and Assets.

	-- 4. Loan: Attributes include L_no and Amt.

-- Relationships:

	-- Depositor: Links Customer to Account.

	-- Borrower: Links Customer to Loan.

	-- Account Branch: Links Account to Branch.

	-- Loan Branch: Links Loan to Branch.

-------------------------------------------- Step-by-Step Conversion -------------------------------------------

-- 1. Creating the Customer table :

CREATE TABLE Customer (
    C_name VARCHAR(50) PRIMARY KEY,
    C_city VARCHAR(50),
    C_street VARCHAR(50)
);

-- 2. Creating the Account table :

CREATE TABLE Account (
    Ac_no INT PRIMARY KEY,
    Balance DECIMAL(10, 2)
);

-- 3. Creating the Branch table :

CREATE TABLE Branch (
    b_name VARCHAR(50) PRIMARY KEY,
    b_city VARCHAR(50),
    Assets DECIMAL(15, 2)
);

-- 4. Creating the Loan table :

CREATE TABLE Loan (
    L_no INT PRIMARY KEY,
    Amt DECIMAL(10, 2)
);

-- 5. Creating the Depositor relationship table :

CREATE TABLE Depositor (
    C_name VARCHAR(50),
    Ac_no INT,
    PRIMARY KEY (C_name, Ac_no),
    FOREIGN KEY (C_name) REFERENCES Customer(C_name),
    FOREIGN KEY (Ac_no) REFERENCES Account(Ac_no)
);

-- 6. Creating the Borrower relationship table :

CREATE TABLE Borrower (
    C_name VARCHAR(50),
    L_no INT,
    PRIMARY KEY (C_name, L_no),
    FOREIGN KEY (C_name) REFERENCES Customer(C_name),
    FOREIGN KEY (L_no) REFERENCES Loan(L_no)
);

-- 7. Creating the Account Branch relationship table :

CREATE TABLE AccountBranch (
    Ac_no INT,
    b_name VARCHAR(50),
    PRIMARY KEY (Ac_no, b_name),
    FOREIGN KEY (Ac_no) REFERENCES Account(Ac_no),
    FOREIGN KEY (b_name) REFERENCES Branch(b_name)
);

-- 8. Creating the Loan Branch relationship table :

CREATE TABLE LoanBranch (
    L_no INT,
    b_name VARCHAR(50),
    PRIMARY KEY (L_no, b_name),
    FOREIGN KEY (L_no) REFERENCES Loan(L_no),
    FOREIGN KEY (b_name) REFERENCES Branch(b_name)
);

------------------------------------------------- Conclusion ---------------------------------------------------

-- This project demonstrated the conversion of an ER diagram into relational tables in MSSQL. By following these 
-- steps, we ensure our database is well-structured and capable of handling complex queries efficiently. 
-- Mastering this skill is fundamental for any database professional and will significantly enhance our 
-- ability to design and manage databases effectively.
