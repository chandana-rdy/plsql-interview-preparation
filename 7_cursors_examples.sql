---Create Employee Table
CREATE TABLE employees(
  emp_id NUMBER PRIMARY KEY,
  emp_name VARCHAR2(50),
  salary NUMBER,
  department VARCHAR2(50)
);


--Insert Sample Data
INSERT INTO employees VALUES
(101,'abc',50000,'IT');
INSERT INTO employees VALUES
(102,'def',60000,'HR');
INSERT INTO employees VALUES
(103,'ghi',55000,'Finance');
INSERT INTO employees VALUES
(104,'ijk',70000,'IT');
COMMIT;


--Explicit Cursor Example
DECLARE
   CURSOR emp_cursor IS
          SELECT emp_id, emp_name, salary
FROM employees;
   v_id employees.emp_id%TYPE;
   v_name employees.emp_name%TYPE;
   v_salary employees.salary%TYPE;
BEGIN
   OPEN emp_cursor;
   LOOP 
       FETCH emp_cursor INTO v_id,
v_name,v_salary;
       EXIT WHEN emp_cursor%NOTFOUND;
       DBMS_OUTPUT.PUT_LINE('employee ID: '|| v_id ||
         'Name: ' || v_name ||
         'Salary: ' || v_salary);
    END LOOP;
    CLOSE emp_cursor;
END;
/

  
--Cursor FOR Loop Example
DECLARE
   CURSOR emp_cursor IS
          SELECT  emp_name, salary
FROM employees;
  BEGIN
    FOR emp_record IN emp_cursor LOOP
        DBMS_OUTPUT.PUT_LINE(
         'Employee: ' ||
    emp_record.emp_name ||
          'Salary: ' || emp_record.salary);
    END LOOP;
END;
/


--Cursor With Parameter
DECLARE
   CURSOR dept_cursor(dept_name
   VARCHAR2) IS
          SELECT  emp_name, salary
          FROM employees
          WHERE department=dept_name;
  BEGIN
    FOR emp_record IN dept_cursor('IT')
  LOOP
        DBMS_OUTPUT.PUT_LINE(
         'Employee: ' ||
    emp_record.emp_name ||
          'Salary: ' || emp_record.salary);
    END LOOP;
END;
/
         






















