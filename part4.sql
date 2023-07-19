select * from employees;

desc employees;

select first_name, LOWER(first_name) from employees;

select * from employees
where LOWER(first_name) = 'david';

select LOWER('PRIVET '||'SKolko tebe ket? '||'32') from dual;

select first_name, length(first_name) as dlina from employees;

select salary*100 as newsal, length(salary*100) from employees
where salary*100 = 1700000;

select ROUND(654643.54, -4) from dual;

select employee_id, months_between(start_date, end_date) from job_history;

