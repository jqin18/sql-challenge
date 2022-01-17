--1.
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees as e
join salaries as s
on e.emp_no = s.emp_no

--2.
select first_name, last_name, hire_date
from employees
where hire_date >= '1986-01-01';

--3.
SELECT d.dept_no, d.dep_name, e.first_name, e.last_name, e.emp_no
FROM employees as e
JOIN dept_manager as m
ON e.emp_no = m.emp_no
JOIN public."Departments" as d
ON d.dept_no = m.dept_no;

--4.
select e.first_name, e.last_name, e.emp_no, d.dep_name
FROM employees as e
join dept_employ as f
on e.emp_no = f.emp_no
JOIN public."Departments" as d
ON d.dept_no = f.dept_no;

--5. 
select first_name, last_name, sex
from employees
where first_name = 'Hercules'
and last_name like 'B%'

--6.
select e.first_name, e.last_name, e.emp_no, d.dep_name
FROM employees as e
join dept_employ as f
on e.emp_no = f.emp_no
JOIN public."Departments" as d
ON d.dept_no = f.dept_no
where d.dep_name = 'Sales';

--7.
select e.first_name, e.last_name, e.emp_no, d.dep_name
FROM employees as e
join dept_employ as f
on e.emp_no = f.emp_no
JOIN public."Departments" as d
ON d.dept_no = f.dept_no
where d.dep_name in ('Sales','Development');

--8.
SELECT last_name, COUNT(last_name) AS "last name count"
FROM employees
GROUP BY last_name
ORDER BY "last name count" DESC;


