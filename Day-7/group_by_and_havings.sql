USE  startersql;


-- Group by example:
-- Gender wise average salary aur count nikalna,
-- aur filter karna jinka avg salary 61000 se kam ho.
SELECT gender as "Gender", AVG(salary) as 'Average Salary', COUNT(*) AS'Count' 
FROM users WHERE id<50000 GROUP BY gender
 HAVING AVG(salary)< 61000;
 
 -- WITH ROLLUP = group ke baad ek extra total summary row add karta hai.
SELECT gender as "Gender", AVG(salary) as 'Average Salary', COUNT(*) AS'Count' 
FROM users WHERE id<50000 GROUP BY gender WITH ROLLUP;
 
 SELECT * FROM users;