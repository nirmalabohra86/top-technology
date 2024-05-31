select * from employees;
select * from departments;

-- 1. Write a query to display the last name, department number, department name for all employees. 
select D.department_id , D.department_name , E.last_name from employees as E 
join departments as D on E.department_id = D.department_id;

-- 2. Create a unique list of all jobs that are in department 4. Include the location of the department in the output. 
select distinct E.job_id , L.city as Location from employees E 
join departments D on E.department_id = D.department_id 
join locations L on D.location_id = L.location_id 
where E.department_id =4;  

-- 3. Write a query to display the employee last name,department name,location id and city of all employees who earn commission. 
select E.last_name , D.department_name, L.location_id , L.city , commission_pct  from employees As E 
join departments As D on  E.department_id = D.department_id 
join locations L on D.location_id = L.location_id 
where commission_pct is not null;

-- 4. Display the employee last name and department name of all employees who have an 'a' in their last name 
select E.last_name , D.department_name from employees As E 
join departments As d on E.department_id = D.department_id
 where E.last_name like "%a%";

-- 5. Write a query to display the last name,job,department number and department name for all employees who work in ATLANTA. 
select E.last_name , E.job_id , D.department_id , D.department_name  from employees As E 
join departments As d on E.department_id = D.department_id 
join locations as L on D.location_id = L.location_id 
where L.city = 'ATLANTA';

-- 6. Display the employee last name and employee number along with their manager's last name and manager number. 

select e.employee_id as EmployeeNumber, e.last_name as LastName, m.employee_id as ManagerNumber, m.last_name AS ManagerLastName
FROM employees as e
LEFT JOIN employees m ON e.manager_id = m.employee_id;

-- 7. Display the employee last name and employee number along with their manager's last 
-- name and manager number (including the employees who have no manager). 

-- 8. Create a query that displays employees last name,department number,and all the 
-- employees who work in the same department as a given employee. 

-- 9. Create a query that displays the name,job,department name,salary,grade for all 
-- employees. Derive grade based on salary(>=50000=A, >=30000=B,<30000=C) 
select E.first_name , E.last_name , E.job_id , D.department_name , E.salary , 
case when E.salary >= 50000 then "A" 
when E.salary >= 30000 then "B" 
else "C" end as Grade from employees as E join departments as D on  E.department_id = D.department_id ;
 
-- 10. Display the names and hire date for all employees who were hired before their 
-- managers along withe their manager names and hire date. Label the columns as Employee name, emp_hire_date,manager name,man_hire_date.

