📌 Question 2

Query the NAME field for all American cities in the CITY table with populations larger than 120000.
The CountryCode for America is USA.

solutions - 

-- Fetch only the NAME column
-- Conditions:
-- 1. CountryCode must be 'USA'
-- 2. Population must be greater than 120000

SELECT NAME
FROM CITY
WHERE COUNTRYCODE = 'USA'
AND POPULATION > 120000;