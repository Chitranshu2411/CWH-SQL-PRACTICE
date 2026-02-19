USE  startersql;

-- Sabhi users ki average salary nikal rahe hain
SELECT AVG(salary) FROM users;

-- Un users ko fetch kar rahe hain jinki salary average salary se kam hai
-- (Yeh subquery pehle average salary calculate karegi, fir outer query compare karegi)
SELECT * FROM users WHERE salary < (SELECT AVG(salary) FROM users);

SELECT id , name , referred_by_id 
FROM users  
WHERE referred_by_id IN (
SELECT id FROM users WHERE salary > 50000
);


-- Har user ka name aur salary show kar rahe hain
-- Saath me ek subquery se poori table ki average salary nikal rahe hain
-- Ye average har row ke saath ek extra column me dikh rahi hai
SELECT name , salary,
(SELECT AVG(salary) FROM users) AS average_employee_salary
FROM users;