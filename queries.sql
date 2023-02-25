select employees.emp_no, last_name, first_name, sex, salary
from salaries s
inner join employees
	on(employees.emp_no = s.emp_no);
	
select first_name, last_name, hire_date
from employees
where hire_date > '12/31/1985'
 AND hire_date < '1/1/1987';
 
select d.dept_no, dept_name, employees.emp_no, last_name, first_name
from dept_manager d
inner join employees
	on(employees.emp_no = d.emp_no)
inner join department
	on(department.dept_no = d.dept_no);

select d.dept_no, dept_name, employees.emp_no, last_name, first_name
from dept_manager d
inner join employees
	on(employees.emp_no = d.emp_no)
inner join department
	on(department.dept_no = d.dept_no);
	
select d.dept_no, employees.emp_no, last_name, first_name, dept_name
from dept_employee d
inner join employees
	on(employees.emp_no = d.emp_no)
inner join department
	on(department.dept_no = d.dept_no);
	
select first_name, last_name, sex
from employees
where first_name = 'Hercules'
and last_name like 'B%';

select employees.emp_no, last_name, first_name
from dept_employee d
inner join employees
	on(employees.emp_no = d.emp_no)
inner join department
	on(department.dept_no = d.dept_no)
where dept_name = 'Sales';

select employees.emp_no, last_name, first_name, dept_name
from dept_employee d
inner join employees
	on(employees.emp_no = d.emp_no)
inner join department
	on(department.dept_no = d.dept_no)
where dept_name = 'Sales'
or dept_name = 'Development';

select last_name, count(last_name) as "Occurances"
from employees
group by last_name
order by "Occurances" DESC;