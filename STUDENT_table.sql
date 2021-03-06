/*
create table student(name varchar(10), id number, branch varchar(6), sem number, result number, dob date);
insert into STUDENT values('John', 101, 'CMPN', 4, 65, '03-Dec-88');
insert into STUDENT values('Bill', 154, 'INFT', 6, 72, '04-Nov-87');
insert into STUDENT values('Mary', 162, 'CMPN', 6, 58, '05-Jul-87');
insert into STUDENT values('David', 183, 'EXTC', 6, 65, '25-Oct-88');
*/

--1) Names and IDs of those students who scored above 60:

select name,id from student where result > 60;
/*
NAME               ID
---------- ----------
John              101
Bill              154
David             183
*/

--2) List of branches to which students belong:

select distinct branch from student;
/*
BRANCH
------
EXTC
INFT
CMPN
*/


--3) Names of all students except those to belong to branch CMPN:

select name from student where branch != 'CMPN';

/*NAME
----------
Bill
David
*/


--4) Sort students by their result. If they are same, then sort them further by their name:

select * from student order by result, name;
/*
NAME               ID BRANCH        SEM     RESULT DOB
---------- ---------- ------ ---------- ---------- ---------
Mary              162 CMPN            6         58 05-JUL-87
David             183 EXTC            6         65 25-OCT-88
John              101 CMPN            4         65 03-DEC-88
Bill              154 INFT            6         72 04-NOV-87
*/

--5) Display the student name who have an a (lowercase) in their names:

select name from student where name like '%a%';
/*
NAME
----------
Mary
David
*/