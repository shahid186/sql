CREATE database IF NOT EXISTS SPRINT3;
USE SPRINT3;
CREATE TABLE EMPLOYEE
(
E_ID INT PRIMARY KEY,
NAME varchar(50),
ADDRESS VARCHAR(50)
);

CREATE TABLE DEPARTMENT
(
DEPT_NO VARCHAR(5) PRIMARY KEY,
DEPT_NAME varchar(50),
E_ID INT
);


INSERT INTO employee(E_ID,NAME,ADDRESS) VALUES(1,'JOHN','NEW YORK');
INSERT INTO employee(E_ID,NAME,ADDRESS) VALUES(2,'MICHAEL','TEXAS');
INSERT INTO employee(E_ID,NAME,ADDRESS) VALUES(3,'SAN','INDIANA');
INSERT INTO employee(E_ID,NAME,ADDRESS) VALUES(4,'JAMES','MERY LAND');
INSERT INTO employee(E_ID,NAME,ADDRESS) VALUES(5,'LIAM','TEXAS');

INSERT INTO department(DEPT_NO,DEPT_NAME,E_ID)VALUES('D1','HR',1);
INSERT INTO department(DEPT_NO,DEPT_NAME,E_ID)VALUES('D2','IT',2);
INSERT INTO department(DEPT_NO,DEPT_NAME,E_ID)VALUES('D3','HR',4);
INSERT INTO department(DEPT_NO,DEPT_NAME,E_ID)VALUES('D4','HR',5);
INSERT INTO department(DEPT_NO,DEPT_NAME,E_ID)VALUES('D5','HR',6);

SELECT * FROM employee;
SELECT * FROM department;

-- inner join

USE SPRINT3;
select NAME,DEPT_NAME from employee as E inner join  department as D
	on employee.E_ID=department.E_ID;
    
select employee.E_ID,department.DEPT_NAME from employee  inner join  department 
ON employee.E_ID=department.E_ID;

select employee.E_ID,department.DEPT_NAME from employee  join  department 
ON employee.E_ID=department.E_ID;

select employee.E_ID,department.DEPT_NAME from employee  join  department 
USING(E_ID);

select employee.E_ID,department.DEPT_NAME from employee  , department 
WHERE employee.E_ID=department.E_ID;



select DEPT_NAME,COUNT(*) from employee as E straight_join  department as D
on E.E_ID=D.E_ID
WHERE E.E_ID IN (1,2,4)
GROUP BY DEPT_NAME
HAVING COUNT(*)>1
ORDER BY 1
LIMIT 1;



-- straight join
select employee.E_ID,DEPT_NAME from employee straight_join  department
on employee.E_ID=department.E_ID;


-- join multiple table


/*
Eg:
A:(a1,a2)
B:(b1,b2,a1)
C:(c1,c2,b1,a2)
D:(c1,d1,d2)
E:(b1,e1)
*/


/*select A.a1,B.b1,C.c1 from 
A inner join B on A.a1=B.a1
inner join C on A.a2=C.a2
inner join D on C.c1=D.c1
inner join E on E.b1=B.b1 */

select employee_id,first_name,last_name,department_name,city,region_name from
employees inner join departments on  employees.department_id=departments.department_id
inner join locations on departments.location_id=locations.location_id
inner join countries on countries.country_id=locations.country_id
inner join regions on regions.region_id=countries.region_id;



use hr;

select employees.first_name,departments.department_name,locations.city from
employees inner join departments on employees.department_id=departments.department_id
inner join locations on locations.location_id=departments.location_id;



-- outer join
-- 1. left outer join
-- 2. right outer join

-- left outer join
use sprint3;
select employee.E_ID,DEPT_NAMEfrom employee left join department
	on employee.E_ID=department.E_ID;

select employee.E_ID,NAME,DEPT_NO,DEPT_NAME
from employee left outer join department
using(E_ID);

select employee.E_ID,NAME,DEPT_NO,DEPT_NAME
from employee inner join department
using(E_ID);

-- right outer join
select department.E_ID,NAME,DEPT_NO,DEPT_NAME
from employee right outer join department
using(E_ID);


    use sprint3;
-- natural join
select * from employee natural join department;

select E_ID,DEPT_NAME from employee natural join department;

select E_ID,DEPT_NAME from employee natural join department ;
use hr;

select first_name,last_name,department_name,city from
employees natural join departments natural join locations;



-- cross join
use sprint3;

select employee.E_ID,DEPT_NAME from employee cross join department
order by 1;

-- view 
use hr;

SELECT * FROM employees;

CREATE view INTER_VIEW1 
AS SELECT employee_id,email,job_id FROM employees;
 DROP VIEW my_view;

CREATE VIEW MY_VIEW 
AS SELECT * FROM employees
WHERE department_id IN(10,20,30);

SELECT * FROM MY_VIEW;

SELECT * FROM INTER_VIEW1;

DROP VIEW my_view;

ALTER VIEW my_view AS SELECT employee_id,salary,hire_date FROM employees;

SELECT * FROM my_view;


create view hr_data as 
select * from employees
where department_id=20;

select * from departments;

select * from hr_data;

drop view it_sales_data;


/*
create view it_sales_data as 
select employee_id,first_name,last_name,salary,department_name from employees join departments
on departments.department_id=employees.department_id
where department_name in ('it','sales');*/


select * from it_sales_data;


alter view it_sales_data
as select employee_id,concat(first_name,' ',last_name) 'Full_Name',salary from employees join departments
on departments.department_id=employees.department_id
where department_name in ('it','sales');

create view  my_view1 as
select Full_Name from it_sales_data;

drop view my_view1;


create view view_name_dept as
select employee_id,concat(first_name,' ',last_name)'Full_Name',department_name from employees join departments
on employees.department_id = departments.department_id;

-- join between table and view
select employees.employee_id,Full_Name,department_name,salary 
from employees join view_name_dept
on employees.employee_id = view_name_dept.employee_id;


SELECT * FROM view_name_dept;
/*JOIN TABLE AND TABLE
JOIN TABLE AND VIEW
JOIN VIEW AND VIEW*/

  DROP VIEW it_DATA;
  
CREATE VIEW it_DATA AS 
SELECT  employee_id,department_name FROM employees 
JOIN departments 
ON employees.department_ID=departments.department_ID
WHERE department_name='it';

SELECT * FROM it_DATA;



