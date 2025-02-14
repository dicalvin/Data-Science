-- Limit and Aliasing
-- LIMIT to limit the number of rows
SELECT *
FROM employee_demographics
LIMIT 3;

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 3;

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 2,1;

-- Aliasing
SELECT gender, AVG(age) AS avg_age
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40;