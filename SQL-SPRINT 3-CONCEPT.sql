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
DROP TABLE department;

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


SELECT E.E_ID,NAME,DEPT_NO,DEPT_NAME FROM employee AS E  INNER JOIN department AS D
ON E.E_ID=D.E_ID;
-- or
SELECT E.E_ID,NAME,DEPT_NO,DEPT_NAME FROM employee AS E,department AS D
WHERE E.E_ID=D.E_ID;
-- or
SELECT E.E_ID,NAME,DEPT_NO,DEPT_NAME FROM employee AS E  INNER JOIN department AS D
USING(E_ID);

SELECT * FROM employee AS E  INNER JOIN department AS D
USING(E_ID);

SELECT ADDRESS,count(*)  FROM employee AS E  INNER JOIN department AS D
USING(E_ID)
where ADDRESS is not null
group by ADDRESS
having count(*)>=1
order by 2
limit 1;

-- straight join
select employee.E_ID,DEPT_NAME from employee straight_join  department
on employee.E_ID=department.E_ID;

-- outer join
-- 1. left outer join
-- 2. right outer join

-- left outer join

select * from department;


select employee.E_ID,DEPT_NAME from employee left join department
	on employee.E_ID=department.E_ID;

select employee.E_ID,DEPT_NAME from employee right join department
	on employee.E_ID=department.E_ID;

select E_ID,DEPT_NAME from employee natural join department;

select E_ID,DEPT_NAME from employee natural join department;

select employee.E_ID,DEPT_NAME from employee cross join department;


