select * from employees;

select first_name from employees
where case when upper(first_name) like '%B%' then first_name end is not null;

select first_name
from employees
where (case when upper(first_name) like '%A%A%' then first_name end) is not null;

select * from departments;

select department_name, substr(department_name, 1, instr(trim(department_name), ' ')) as "dp_name"
from departments
where substr(department_name, 1, instr(department_name, ' ')) is not null;

select first_name, substr(first_name, 2, length(first_name) - 2) as small_name
from employees
where length(first_name) > 2;

select employee_id, first_name, job_id, substr(job_id, instr(job_id, '_') + 1) as "small_job_id" from employees
where (length(substr(job_id, instr(job_id, '_') + 1)) >=3  and substr(job_id, instr(job_id, '_') + 1) != 'CLERK');

select substr(job_id, instr(job_id, '_') + 1), length(substr(job_id, instr(job_id, '_') + 1)), length(substr(job_id, instr(job_id, '_') + 1)) >= 3 and substr(job_id, instr(job_id, '_') + 1) != 'CLERK'
from employees;

select first_name, hire_date
from employees
where to_char(hire_date, 'DD') = '01';

select first_name, hire_date
from employees
where 
decode(to_char(hire_date, 'DD'), '01', '1')
is not null;

select first_name, hire_date from employees
where to_char(hire_date, 'yyyy') = '2008';

select to_char(sysdate + 1, '"Tomorrow is " DdSPTH "day of " Month') from dual;

select first_name, to_char(hire_date, 'DDth" of "fmMonth", "yyyy') from employees;

select first_name, to_char(salary*1.2, '$999,999.99') from employees;

select to_char(sysdate, 'DD-MON-YY HH24:MI:SS') from dual;

select first_name, salary, (salary + to_number('$12,345.55', '$999,999.99')) as new_salary
from employees;

select first_name, to_char(hire_date, 'dd') as hire_day, months_between(to_date('SEP, 18:45:00 18 2009', 'MON, HH24:MI:SS DD YYYY'), hire_date) as months_between
from employees;

select first_name, salary, nvl(commission_pct*salary + salary, salary) as full_salary
from employees;

select first_name, last_name, 
nvl2(nullif(length(first_name), length(last_name)), 'different length', 'same length') as len
from employees;

select first_name, commission_pct, 
nvl2(commission_pct, 'Yes', 'No') as "Bonus"
from employees;

select first_name, commission_pct, manager_id, salary,
case
    when commission_pct is not null then commission_pct
    when manager_id is not null then manager_id
    else salary
end as "Other"
from employees;

select first_name, salary, 
case
    when salary < 5000 then 'Low level'
    when salary >= 5000 and salary < 10000 then 'Normal level'
    when salary >= 10000 then 'High level'
end
from employees;

select region_name, 
decode(region_id, 
                1, 'Europe', 
                2, 'America', 
                3, 'Asia', 
                4, 'Africa') 
as reg_index
from regions;

select region_name, 
case region_id
    when 1 then 'Europe'
    when 2 then 'America'
    when 3 then 'Asia'
    when 4 then 'Africa'
end as reg_index
from regions;

select first_name, salary, commission_pct,
case
    when (salary < 10000 and commission_pct is null) then 'BAD'
    when (salary >= 10000 and salary < 15000 or commission_pct is not null) then 'NORMAL'
    when (salary >= 15000) then 'GOOD'
end
from employees;