select * from EMPLOYEES;
--reads all column from employees table

select * from DEPARTMENTS;
-- reads all column from departments table

select FIRST_NAME from EMPLOYEES;
-- get only firstname from employee table

-- display city name
select CITY from LOCATIONS;

-- get me first-name,last-name,salary
select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES;

-- get me street address and postal code
select STREET_ADDRESS,POSTAL_CODE from LOCATIONS;

select distinct FIRST_NAME from EMPLOYEES;
--remove duplicates