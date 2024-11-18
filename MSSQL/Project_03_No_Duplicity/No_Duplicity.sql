
									-- SQL Project : No Duplicity
			-- Query the list of CITY names from the given table that do not end with vowels.  
						-- Our result should not contain duplicate values.
---------------------------------------------------------------------------------------------------------
			-- Creating the table - 'cities' :

CREATE TABLE cities(
	id INT,
	city VARCHAR(50),
	states VARCHAR(50)
	);

			-- Inserting data into out table :

INSERT INTO cities (id, city, states)
VALUES 
		(1, 'New York', 'New York State'),
		(2, 'Los Angeles', 'California'),
		(3, 'Chicago', 'Illinois'),
		(4, 'Houston', 'Texas'),
		(5, 'Phoenix', 'Arizona'),
		(6, 'Philadelphia', 'Pennsylvania'),
		(7, 'San Antonio', 'Texas'),
		(8, 'San Diego', 'California'),
		(9, 'Dallas', 'Texas'),
		(10, 'San Jose', 'California');

SELECT * FROM cities

			-- Querying the list of CITY names from the given table that do not end with vowels :

SELECT DISTINCT city
FROM cities
WHERE city NOT LIKE '%[aeiouAEIOU]';