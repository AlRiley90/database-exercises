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

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%e';

SELECT *
FROM employees
WHERE last_name LIKE '%E%'
   OR last_name LIKE '%e';

SELECT *
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';