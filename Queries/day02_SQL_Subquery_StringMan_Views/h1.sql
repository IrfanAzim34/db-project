--find the highest 57th salary
select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc) where ROWNUM < 58;

--find employee info who is making 58th highest salary
select * from EMPLOYEES where SALARY =
(select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc) where ROWNUM < 58);