-- I want to see firstname lastname phone number of David(s)
select FIRST_NAME,LAST_NAME,PHONE_NUMBER from EMPLOYEES where FIRST_NAME = 'David' and LAST_NAME ='Lee';

-- get me all information wh is making more than 7000 salary
select * from  EMPLOYEES where SALARY > 7000;

--get me email of who is making less than 4000
select EMAIL,SALARY from EMPLOYEES where SALARY < 4000;

--get me all info who is working as IT_PROG or SA_REP
select * from EMPLOYEES where JOB_ID = 'IT_PROG' or JOB_ID = 'SA_REP';