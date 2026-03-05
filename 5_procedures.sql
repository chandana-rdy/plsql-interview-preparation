--Procedure to add employee details
cretae or replace procedure add_employee(
id number,
name varchar2,
sal number
)
is
begin
insert into employees values(id, name, sal);
end;
