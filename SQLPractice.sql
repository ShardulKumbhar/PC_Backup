use sample;
create table worker (worker_Id int, first_Name varchar(155), last_Name varchar(155), salary int, joining_Date date, department varchar(155));
insert into worker (worker_Id, first_Name, last_Name, salary, joining_Date, department) values
(001, "Monika", "Arora", 100000, "2014-02-20", "HR"),
(002, "Niharika", "Verma", 80000, "2014-06-11", "Admin"),
(003, "Vishal", "Singhal", 300000, "2014-02-20", "HR"),
(004, "Amitabh", "Singh", 500000, "2014-02-20", "Admin"),
(005, "Vivek", "Bhati", 500000, "2014-06-11", "Admin"),
(006, "Vipul", "Diwan", 200000, "2014-06-11", "Account"),
(007, "Satish", "Kumar", 75000, "2014-01-20", "Account"),
(008, "Geetika", "Chauhan", 90000, "2014-04-11", "Admin");

create table title (worker_Ref_Id int, worker_Title varchar(155), affected_From date);
insert into title (worker_Ref_Id, worker_Title, affected_From) values
(1, "Manager", "2016-02-20"),
(2, "Executive", "2016-06-11"),
(8, "Executive", "2016-06-11"),
(5, "Manager", "2016-06-11"),
(4, "Asst. Manager", "2016-06-11"),
(7, "Executive", "2016-06-11"),
(6, "Lead", "2016-06-11"),
(3, "Lead", "2016-06-11");

create table bonus (worker_Ref_Id int, bonus_Date date, bonus_Amount int);
insert into bonus (worker_Ref_Id, bonus_Date, bonus_Amount) values
(1,  "2016-02-20", 5000),
(2, "2016-06-11", 3000),
(3,  "2016-02-20", 4000),
(1, "2016-02-20", 4500),
(2, "2016-06-11", 3500);

select * from worker;
select * from title;
select * from bonus;

-- Q-1. Write an SQL query to fetch “FIRST_NAME” from the Worker table using the alias name<WORKER_NAME>
select first_Name as worker_Name from worker;
-- Q-2. Write an SQL query to fetch “FIRST_NAME” from the Worker table in upper case.
select upper(first_Name) as first_Name from worker;
-- Q-3. Write an SQL query to fetch unique values of DEPARTMENT from the Worker table.
select distinct department from worker;
-- Q-4. Write an SQL query to print those  FIRST_NAME from the Worker table whose First_Name starts with V
select first_Name from worker where first_Name like "V%";
-- Q-5. Write an SQL query to print the FIRST_NAME from the Worker table after replacing ‘a’ with ‘A’
select replace(first_Name, 'a','A') from worker;
-- Q-6. Write an SQL query to print the FIRST_NAME and LAST_NAME from the Worker table into a single column COMPLETE_NAME. A space char should separate them.
select concat(first_Name, ' ', last_Name) as full_Name from worker;
-- Q-7. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending
select * from worker order by first_Name asc;
-- Q-8. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending
select * from worker order by first_Name asc, department desc;