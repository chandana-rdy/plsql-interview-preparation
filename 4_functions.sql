--Function to return salary of employee
create or replace function
get_salary(emp_id number)
return number
is
  v_salary number;
begin
  select salary into v_salary
  from employees
  where employee_id=emp_id;
  return v_salary;
end;
