--how can we rename the column that we displayed
select FIRST_NAME as given_name from EMPLOYEES;
select FIRST_NAME as "given_name" from EMPLOYEES;
select FIRST_NAME as given_name,LAST_NAME as surname from EMPLOYEES;

--text function,string mani
--in java first_name + " " +last_name
--in SQL concat is ||
select FIRST_NAME||' '||LAST_NAME as full_name from EMPLOYEES;

--Task:
--add @gmail.com and name new column to full email
select EMAIL||'@gmail.com' as full_email from EMPLOYEES;

--making all lowercase
select lower(EMAIL||'@gmail.com') as full_email from EMPLOYEES;

--upper case
select upper(EMAIL||'@gmail.com') as full_email from EMPLOYEES;

--length(value)
select FIRST_NAME as given_name,length(FIRST_NAME) as "length_name" from EMPLOYEES order by "length_name" desc;

--substr(colName,begIndex,numberOfChar)
select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1) as "initials" from EMPLOYEES;

select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1) as "initials",FIRST_NAME||' '||LAST_NAME as "full_name",
       lower(EMAIL || '@gmail.com') as "full_email" from EMPLOYEES;

--VIEW
create view EmailList as select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1) as "initials",
FIRST_NAME||' '||LAST_NAME as "full_name",lower(EMAIL || '@gmail.com') as "full_email" from EMPLOYEES;

select "full_name" from EMAILLIST;

--to remove view
drop view EMAILLIST;

--find the highest 57th salary
select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc) where ROWNUM < 58;

--find employee info who is making 58th highest salary
select * from EMPLOYEES where SALARY =
(select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc) where ROWNUM < 58);