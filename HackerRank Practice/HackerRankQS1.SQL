📌 Question 1

Query all columns for all American cities in the CITY table with populations larger than 100000.
The CountryCode for America is USA.

🗂 Table Structure: CITY
Field	Type
ID	    NUMBER
NAME	VARCHAR2(17)
COUNTRYCODE	VARCHAR2(3)
DISTRICT	VARCHAR2(20)
POPULATION	NUMBER


solutions:- 

-- Fetch all columns for American cities
-- Condition:
-- 1. CountryCode must be 'USA'
-- 2. Population must be greater than 100000

SELECT *
FROM CITY
WHERE COUNTRYCODE = 'USA'
AND POPULATION > 100000;













