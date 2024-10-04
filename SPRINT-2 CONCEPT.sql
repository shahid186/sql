CREATE DATABASE SPRINT2;
USE SPRINT2;

CREATE TABLE STUDENT
(
ROLL_NO INT PRIMARY KEY,
FIRST_NAME VARCHAR(50) NOT NULL,
LAST_NAME VARCHAR(50),
CITY VARCHAR(50) DEFAULT 'DELHI',
MARKS INT CHECK(MARKS>0),
DOB date
);
DROP TABLE student;

INSERT INTO 
STUDENT(ROLL_NO,FIRST_NAME,LAST_NAME,CITY,MARKS,DOB)
VALUES(100,'AMIT','KUMAR','BANGALORE',400,'2002-10-11');

INSERT INTO 
STUDENT(ROLL_NO,FIRST_NAME,LAST_NAME,CITY,MARKS,DOB)
VALUES(101,'SUMIT','SINGH','BANGALORE',450,'2002-02-13');

INSERT INTO 
STUDENT(ROLL_NO,FIRST_NAME,LAST_NAME,CITY,MARKS,DOB)
VALUES(102,'AJIT','SINGH','MUMBAI',440,'2001-02-13');

INSERT INTO 
STUDENT(ROLL_NO,FIRST_NAME,LAST_NAME,CITY,MARKS,DOB)
VALUES(103,'SOMYA','REDDY','HYDERABAD',480,'2001-07-13');

INSERT INTO 
STUDENT(ROLL_NO,FIRST_NAME,LAST_NAME,CITY,MARKS,DOB)
VALUES(104,'GITA','PAWAR','MUMBAI',440,'2001-09-18');

INSERT INTO 
STUDENT(ROLL_NO,FIRST_NAME,LAST_NAME,CITY,MARKS,DOB)
VALUES(105,'SAMIR','MEHTA','ANAND',480,'2001-01-30');

INSERT INTO 
STUDENT(ROLL_NO,FIRST_NAME,LAST_NAME,MARKS,DOB)
VALUES(106,'VIPUL','SHARMA',480,'2001-11-30');

-- SELECT VARIATION
SELECT * FROM student;

SELECT FIRST_NAME,CITY FROM student;

-- SELECT WITH WHERE CLAUSE
SELECT FIRST_NAME FROM student WHERE CITY='MUMBAI';
SELECT FIRST_NAME FROM student WHERE CITY!='MUMBAI';

SELECT FIRST_NAME FROM student WHERE CITY='MUMBAI' OR CITY='DELHI';
SELECT FIRST_NAME FROM student WHERE CITY IN('MUMBAI','DELHI');

SELECT FIRST_NAME FROM student WHERE CITY NOT IN('MUMBAI','DELHI');

SELECT FIRST_NAME FROM student WHERE MARKS>400;
SELECT FIRST_NAME FROM student WHERE MARKS>400 AND MARKS<450;
SELECT FIRST_NAME FROM student WHERE MARKS between 400 AND 450;

-- alias

SELECT FIRST_NAME as "STUDENT FIRST NAME" FROM student ;

-- LOGICAL OPERATOR
 
SELECT FIRST_NAME as "STUDENT FIRST NAME" FROM student
WHERE CITY='MUMBAI' AND MARKS<450;

SELECT FIRST_NAME as "STUDENT FIRST NAME" FROM student
WHERE CITY='MUMBAI' OR CITY='DELHI';

SELECT FIRST_NAME as "STUDENT FIRST NAME" FROM student
WHERE NOT CITY='MUMBAI';

-- COMPARISON OPERATOR(=,<,>)

SELECT FIRST_NAME,LAST_NAME,LAST_NAME FROM student
WHERE NOT CITY='MUMBAI';

SELECT FIRST_NAME,CITY,MARKS FROM student
WHERE NOT MARKS>=450;

SELECT FIRST_NAME,CITY,MARKS FROM student
WHERE NOT MARKS<450;

-- BETWEEN OPERATOR
SELECT FIRST_NAME,CITY,MARKS FROM student
WHERE NOT MARKS BETWEEN 450 AND 500;

-- LIKE(%,_)

SELECT FIRST_NAME,CITY,MARKS FROM student
WHERE FIRST_NAME LIKE '%T%';

-- IN OPERATOR
SELECT FIRST_NAME,CITY,MARKS FROM student
WHERE CITY IN('DELHI','MUMBAI','JAIPUR');

-- ARITHMETIC IN SELECT

SELECT 4*5 FROM DUAL;

SELECT MARKS DIV 10 FROM student;

SELECT round((MARKS/5),2) AS 'PER MARKS' FROM student;

-- LIMIT
SELECT * FROM student
limit 2;

-- string function
select length(FIRST_NAME), FIRST_NAME from student;
select concat(FIRST_NAME,' ',LAST_NAME) as 'Full Name' from student;
select insert(FIRST_NAME,2,1,'00')from student;
select locate('a',FIRST_NAME),FIRST_NAME from student;
select left(FIRST_NAME,3),FIRST_NAME from student;
select reverse(FIRST_NAME) from student;
select lower(FIRST_NAME) from student;
select mid(FIRST_NAME,3,2),FIRST_NAME from student;

-- regular expression(regexp)

select FIRST_NAME from student
where FIRST_NAME regexp'A*';

select FIRST_NAME from student
where FIRST_NAME regexp'A+';

select FIRST_NAME from student
where FIRST_NAME regexp'A?';

select FIRST_NAME from student
where FIRST_NAME regexp'^A';


-- date manipulation function

select now();
select day(DOB),month(DOB),week(DOB),year(DOB) from student;
select dayname(DOB),monthname(DOB),(DOB) from student;
select adddate(now(),interval 1 month);

select FIRST_NAME,day(DOB) from student
where month(DOB)=11;

-- math function

select floor(100.60);
select ceil(100.60);
select pi();
select pow(5,2);
select sqrt(4);
select round(10.445,1);
select 10+20,30-10,20*20,100/5;

-- information function

select current_user();
select connection_id();
select database();
select version();

-- aggregate functions or group function

select count(*) from student;
select avg(MARKS) from student;
select sum(MARKS) from student;
select min(MARKS) from student;
select max(MARKS) from student;


-- sort and groupby

select * from student
order by DOB;

select * from student
order by DOB desc;

select * from student
where city='mumbai'
order by DOB desc;


-- group by

select city,sum(MARKS),count(*),avg(MARKS) from student
group by CITY;

select * from student;


-- having clause

select city,sum(MARKS),count(*),avg(MARKS) from student
group by CITY
having count(*)>1;














select (now()) from student;

select * from student;








/* 
1. length(str)
2. concat(s1,s2)
3. insert(stringtomodify,pos,how_many_char_replace,'insert_with')














