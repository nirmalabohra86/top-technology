select * from employees;
-- 1. Write a query that displays the employee's last names only from the string's 2-5th 
-- position with the first letter capitalized and all other letters lowercase, Give each column an appropriate label.
SELECT 
    CONCAT(UPPER(SUBSTRING(last_name, 2, 1)), LOWER(SUBSTRING(last_name, 3, 3))) AS Last_Name
FROM employees;

-- 2. Write a query that displays the employee's first name and last name along with a " in between for e.g.: first name : Ram; last name : Kumar then Ram-Kumar. Also displays the month on which the employee has joined.
select concat(first_name , "-" , last_name) As Full_Name , month(hire_date) As Month from employees;

-- 3. Write a query to display the employee's last name and if half of the salary is greater than 
-- ten thousand then increase the salary by 10% else by 11.5% along with the bonus amount of 1500 each. Provide each column an appropriate label.

select last_name , salary , salary/2,
 case when salary/2 > 10000 then salary * 1.10 + 1500
 else salary * 1.115 + 1500
end as Salary_Bonus from employees;

-- 4. Display the employee ID by Appending two zeros after 2nd digit and 'E' in the end, 
-- department id, salary and the manager name all in Upper case, if the Manager name consists of 'z' replace it with '$!

-- 5. Write a query that displays the employee's last names with the first letter capitalized and 
-- all other letters lowercase, and the length of the names, for all employees whose name 
-- starts with J, A, or M. Give each column an appropriate label. Sort the results by the employees' last names

-- 6. Create a query to display the last name and salary for all employees. Format the salary to 
-- be 15 characters long, left-padded with $. Label the column SALARY 
select last_name , lpad(salary , 15 , "$") As Salary from employees;

-- 7. Display the employee's name if it is a palindrome 
select first_name , last_name from employees where first_name = reverse(first_name) or last_name = reverse(last_name);

-- 8. Display First names of all employees with initcaps.
select concat(upper(substring(first_name,1,1)) , lower(substring(first_name,2)))As First_Name from employees; 

-- 9. From LOCATIONS table, extract the word between first and second space from the STREET ADDRESS column. 
select * from locations;
select concat((substring(street_address,1,1)) , (substring(street_address,2,2))) As Street_Address from locations;

-- 10. Extract first letter from First Name column and append it with the Last Name. Also add 
-- "@systechusa.com" at the end. Name the column as e-mail address. All characters should 
-- be in lower case. Display this along with their First Name.
select first_name , last_name  ,lower(concat(substring(first_name , 1,1) , last_name , "@systechusa.com")) As Email_Id from employees;

-- 11. Display the names and job titles of all employees with the same job as Trenna. 
select job_id , first_name from employees where first_name = "Trenna" ;

-- 12. Display the names and department name of all employees working in the same city as Trenna. 
select * from departments;

-- 13. Display the name of the employee whose salary is the lowest. 
select min(salary) from employees;
select first_name , last_name , salary from employees 
where salary = (select min(salary) from employees);

-- 14. Display the names of all employees except the lowest paid
select first_name , last_name , salary from employees 
where salary > (select min(salary) from employees);