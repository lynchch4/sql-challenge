create table titles (
 title_id varchar(30) not null primary key,
 title varchar(30) not null
 );

create table employees (
 emp_no integer not null primary key,
 emp_title_id varchar(30) not null,
 birth_date date not null,
 first_name varchar(30) not null,
 last_name varchar(30) not null,
 sex varchar(1) not null,
 hire_date date not null,
 foreign key (emp_title_id) references titles(title_id)
 );
 
create table salaries (
 emp_no integer not null primary key,
 salary integer not null,
 foreign key (emp_no) references employees(emp_no)
 );

create table department (
 dept_no varchar(30) not null primary key,
 dept_name varchar(30) not null
 );
	
create table dept_manager (
 dept_no varchar(30) not null,
 emp_no integer not null primary key,
 foreign key (dept_no) references department(dept_no),
 foreign key (emp_no) references employees(emp_no)
 );
 
create table dept_employee (
 emp_no integer not null,
 dept_no varchar(30) not null,
 primary key (emp_no, dept_no),
 foreign key (dept_no) references department(dept_no),
 foreign key (emp_no) references employees(emp_no)
);