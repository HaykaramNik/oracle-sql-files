desc employees;

select * from employees
where length(first_name) > 10;

select * from employees
where mod(salary, 1000) = 0;

select phone_number, substr(phone_number, 1, 3) from employees
where phone_number like '___.___.____';

select * from employees
where length(first_name) > 5 and first_name like '%m';

select next_day(sysdate, 'пятница') from dual;

select * from nls_session_parameters;

select * from employees
where months_between(sysdate, hire_date) > 150;

select replace(phone_number, '.', '-') as phone from employees;

select UPPER(first_name), LOWER(email), INITCAP(job_id) from employees;

select concat(first_name, salary) from employees;

select round(hire_date, 'MM') as hireing_date, round(hire_date, 'yyyy') as first_day_in_year from employees;

select rpad(first_name, 10, '$'), lpad(last_name, 15, '!') from employees;

select first_name, inSTR(first_name, 'a', 1, 2) from employees;

select '!!!HELLO!! MY FRIEND!!!!!!!!', trim(both '!' from '!!!HELLO!! MY FRIEND!!!!!!!!') from dual;

select salary, salary*3.1415, round(salary*3.1415), round(salary*3.1415, -3) from employees;

select hire_date, add_months(hire_date, 6), last_day(hire_date) from employees;