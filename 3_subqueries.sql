--Subquery example
select employee_name,salary
from employees
where salary > (
  select avg(salary)
  from employees
);
