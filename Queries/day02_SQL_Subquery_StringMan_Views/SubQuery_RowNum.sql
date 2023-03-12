--how to find employees information of who is making highest salary in the company

--get me the highest salary
select max(SALARY) from EMPLOYEES;

--highest salary employee information
--subquery
select * from EMPLOYEES where SALARY = (select max(SALARY) from EMPLOYEES);

--finding second highest salary
select max(SALARY) from EMPLOYEES where SALARY < (select max(SALARY) from EMPLOYEES);

--employee information of who is making second highest salary?
select *
from EMPLOYEES
where SALARY = (select max(SALARY) from EMPLOYEES where SALARY < (select max(SALARY) from EMPLOYEES));

-------------------------------------------------------------------
select * from EMPLOYEES order by SALARY desc;
select * from EMPLOYEES where ROWNUM < 11;

--list the employee who is making top 10 salary
--get the first 10 people then order them high to los based on salary
select * from EMPLOYEES where ROWNUM < 11 order by SALARY desc;

--order all employees based on salary high to los then display only first 10 result
select * from (select * from EMPLOYEES order by SALARY desc) where ROWNUM < 11;

