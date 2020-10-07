-- Data Analysis

--(done) 1) List the following details of each employee: employee number, last name, first name, sex, and salary.
select employees.emp_no, employees.fist_name, employees.last_name, employees.sex, salaries.salary
from employees
INNER JOIN salaries ON employees.emp_no = salaries.emp_no;

--2) List first name, last name, and hire date for employees who were hired in 1986.
select employees.fist_name, employees.last_name, employees.hire_date
from employees
WHERE hire_date >= '1986-01-01' AND hire_date <= '1986-12-31';	
		
--(done) 3) List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.fist_name, employees.last_name
from dept_manager
inner join departments ON dept_manager.dept_no = departments.dept_no
inner join employees ON dept_manager.emp_no = employees.emp_no

--(done) 4) List the department of each employee with the following information: employee number, last name, first name, and department name.
select employees.emp_no, employees.last_name, employees.fist_name, departments.dept_name
from employees
inner join dept_emp on employees.emp_no = dept_emp.emp_no
inner join departments on dept_emp.dept_no = departments.dept_no
order by dept_name;

--(done) 5) List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select fist_name, last_name, sex from employees
where fist_name = 'Hercules' AND last_name like 'B%';

--(done) 6) List all employees in the Sales department, including their employee number, last name, first name, and department name.
select employees.emp_no, employees.last_name, employees.fist_name, departments.dept_name
from employees
inner join dept_emp on employees.emp_no = dept_emp.emp_no
inner join departments on dept_emp.dept_no = departments.dept_no
where dept_name = 'Sales';

--(done) 7) List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select employees.emp_no, employees.last_name, employees.fist_name, departments.dept_name
from employees
inner join dept_emp on employees.emp_no = dept_emp.emp_no
inner join departments on dept_emp.dept_no = departments.dept_no
where dept_name = 'Sales' OR dept_name = 'Development';

--(done) 8) In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(*)
FROM employees
GROUP BY last_name
ORDER BY count(*) DESC; 
