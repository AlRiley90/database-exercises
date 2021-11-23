CREATE DATABASE IF NOT EXISTS join_test_db;

CREATE TABLE roles (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE users (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT,
   name VARCHAR(100) NOT NULL,
   email VARCHAR(100) NOT NULL,
   role_id INT UNSIGNED DEFAULT NULL,
   PRIMARY KEY (id),
   FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
     ('bob', 'bob@example.com', 1),
     ('joe', 'joe@example.com', 2),
     ('sally', 'sally@example.com', 3),
     ('adam', 'adam@example.com', 3),
     ('jane', 'jane@example.com', null),
     ('mike', 'mike@example.com', null);

SELECT * FROM users;
SELECT * FROM roles;

INSERT INTO users (name, email, role_id) VALUES
    ('alex', 'alex@example.com', 2),
    ('aaliyah', 'aaliyah@example.com', 2),
    ('ruby', 'ruby@example.com', 2),
    ('ronnie', 'ronnie@example.com', null);

#Inner-Join
SELECT users.name AS user_name, roles.name AS role_name
FROM users
JOIN roles ON users.role_id = roles.id;

#Left-Join
SELECT users.name AS user_name, roles.name AS role_name
FROM users
LEFT JOIN roles ON users.role_id = roles.id;


#Right-Join
SELECT users.name AS user_name, roles.name AS role_name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;

SELECT roles.name, COUNT(*)
FROM users
JOIN roles ON users.role_id = roles.id
GROUP BY roles.id
ORDER BY COUNT(role_id) DESC;


USE employees;

SELECT * FROM employees;
SELECT * FROM dept_manager;

#Joins all department managers
SELECT CONCAT(e.first_name, ' ', e.last_name) AS dept_man_name, d.dept_name
FROM employees AS e
JOIN dept_manager AS de_m
ON de_m.emp_no = e.emp_no
JOIN departments AS d
ON de_m.dept_no = d.dept_no
WHERE de_m.to_date = '9999-01-01';


#Joins all female current managers
SELECT CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager, d.dept_name
FROM employees AS e
JOIN dept_manager AS de_m
  ON de_m.emp_no = e.emp_no
JOIN departments AS d
  ON de_m.dept_no = d.dept_no
WHERE e.gender = 'F' AND de_m.to_date = '9999-01-01';

SELECT * FROM titles;

#Counts the number of employees with each respective title
SELECT t.title AS Title, COUNT(t.emp_no) AS Count
FROM titles AS t
JOIN dept_emp AS de ON t.emp_no = de.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Customer Service'
AND t.to_date = '9999-01-01'
AND de.to_date = '9999-01-01'
GROUP BY t.title;

#Display Dept Manager, Dept Name, and Salary
SELECT d.dept_name AS 'Department Name',
       CONCAT(e.first_name,' ',e.last_name) AS 'Department Manager',
       s.salary AS Salary
FROM employees AS e
JOIN dept_manager AS dm ON e.emp_no = dm.emp_no
JOIN departments AS d ON dm.dept_no = d.dept_no
JOIN salaries AS s ON e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01'
AND s.to_date = '9999-01-01'
ORDER BY dept_name;


#Displays count of employees with specific title
SELECT titles.title, COUNT(*)
FROM titles
JOIN employees ON titles.emp_no = employees.emp_no
GROUP BY titles.title
ORDER BY COUNT(title) DESC;




