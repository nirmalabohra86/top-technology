select * from employees;

-- 1 Display the maximum, minimum and average salary and commission earned.
 
 select max(salary), min(salary), avg(salary), employee_id, commission_pct from employees
 group by employee_id;
 
-- 2 Display the department number, total salary payout and total commission payout for each department.

select department_id, sum(salary), sum(commission_pct) from employees
group by department_id;

-- 3 Display the department number and number of employees in each department.

select count(employee_id), department_id from employees
group by department_id;

-- 4  Display the department number and total salary of employees in each department.

select department_id, sum(salary) from employees
group by department_id;

-- 5  Display the employee's name who doesn't earn a commission. Order the result set without using the column name

select concat(first_name, " ",last_name ) as full_name, commission_pct from employees
where commission_pct is null;
 

-- 6 Display the employees name, department id and commission. If an Employee doesn't earn the commission, then display as 'No commission'. Name the columns appropriately
select concat_ws(" " , first_name , last_name) As Employees_Name , salary*2 AS Salary ,
 if(commission_pct is null , 'No Commission' , Commission_pct*2) As Commission from employees; 
 
 -- 7) Display the employee's name, salary and commission multiplied by 2. If an Employee doesn't earn the commission, then display as 'No commission. Name the columns appropriately.
select concat_ws(" " , first_name , last_name) As Employees_Name , salary*2 AS Salary , if(commission_pct is null , 'No Commission' , Commission_pct*2) As Commission from employees; 

-- 8 Display the employee's name, department id who have the first name same as another employee in the same department

SELECT DISTINCT e1.first_name, e1.department_id, e1.employee_id from employees as e1
JOIN employees as e2 ON e1.first_name = e2.first_name
  AND e1.department_id = e2.department_id
  AND e1.employee_id <> e2.employee_id;
  
-- 9 Display the sum of salaries of the employees working under each Manager.
select manager_id, sum(salary) from employees
group by manager_id;
 
-- 10 Select the Managers name, the count of employees working under and the department ID of the manager.

SELECT m.first_name as manager_first_name, m.last_name as manager_last_name, m.department_id, COUNT(e.employee_id) as employee_count from employees as e
JOIN employees as m 
ON e.manager_id = m.employee_id
GROUP BY m.first_name, m.last_name, m.department_id;

-- 11 Select the employee name, department id, and the salary. Group the result with the manager name and the employee last name should have second letter 

-- 12 Display the average of sum of the salaries and group the result with the department id. Order the result with the department id.
select avg(salary), sum(salary), department_id from employees
group by department_id;

-- 13 Select the maximum salary of each department along with the department id

select max(salary), department_id from employees
group by department_id;

-- 14 Display the commission, if not null display 10% of salary, if null display a default value 1
select commission_pct , 
case when commission_pct is not null then salary*0.10 else 1 end as Commission from employees;
