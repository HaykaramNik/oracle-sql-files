SELECT * from countries;

select first_name, last_name, salary
from employees
where salary = 4800;

select first_name, salary
from employees
where last_name = 'King';

select * from employees
where first_name='Steven';

select * from employees where department_id between 50 and 90;

select * from employees where department_id in (20, 40, 50);

desc job_history;

select * from employees where first_name like 'A%d%';

select * from employees where job_id like 'ST\_%' escape '\';

desc employees;