select department_id, min(salary), max(salary), min(hire_date), max(hire_date), count(*) as count
from employees
group by department_id
order by count;

select substr(first_name, 1, 1), count(*) as count
from employees
group by substr(first_name, 1, 1)
having count(*) > 1
order by count;

select department_id, salary, count(*)
from employees
group by department_id, salary;

select to_char(hire_date, 'day'), count(*)
from employees
group by to_char(hire_date, 'day');

select department_id, count(*), sum(salary)
from employees
group by department_id
having count(*) > 30 and sum(salary) > 300000;

select region_id, sum(length(country_name))
from countries
group by region_id
having sum(length(country_name)) > 50
order by region_id;

select job_id, round(avg(salary))
from employees
group by job_id
order by job_id;

select department_id, count(job_id)
from employees
group by department_id
having count(job_id) > 1;

select department_id, job_id, max(salary), min(salary)
from employees
group by department_id, job_id
having avg(salary) > 10000;

select manager_id, avg(salary)
from employees
where commission_pct is null
group by manager_id
having avg(salary) between 6000 and 9000;

select round(max(avg(salary)), -3)
from employees
group by department_id;