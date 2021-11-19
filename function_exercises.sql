USE employees;

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya','Maya')
ORDER BY last_name, first_name;

SELECT *
FROM employees
WHERE last_name LIKE '%E%'
ORDER BY emp_no;

SELECT *
FROM employees
WHERE last_name LIKE '%q%';

SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%e';

SELECT CONCAT(first_name,' ', last_name, ' has been working here for ', DATEDIFF(CURDATE(), hire_date), ' days')
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
AND month(birth_date) = 12
AND day(birth_date) = 25
 LIMIT 20;

SELECT *
FROM employees
WHERE last_name LIKE '%E%'
   OR last_name LIKE '%e';

SELECT *
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';