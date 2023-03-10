-- I want to see firstname lastname phone number of David(s)
select FIRST_NAME,LAST_NAME,PHONE_NUMBER from EMPLOYEES where FIRST_NAME = 'David' and LAST_NAME ='Lee';

-- get me all information wh is making more than 7000 salary
select * from  EMPLOYEES where SALARY > 7000;