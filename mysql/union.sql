-- union
select age as joined, gender as joined1 from employee_demographics
union
select first_name, last_name from employee_salary;

select first_name as joined, last_name as joined1 from employee_demographics
union
select first_name, last_name from employee_salary;

select first_name as joined, last_name as joined1 from employee_demographics
union distinct
select first_name, last_name from employee_salary;

select first_name as joined, last_name as joined1 from employee_demographics
union all
select first_name, last_name from employee_salary;

select first_name, last_name, "old" as label from employee_demographics where age>50;

select first_name, last_name, "old" as label from employee_demographics where age>50
union
select first_name, last_name, "highly paid employed" as label from employee_salary where salary>70000;

select first_name, last_name,age, "old" as label from employee_demographics where age>40 and gender= 'male' 
union
select first_name, last_name, age,"old" as label from employee_demographics where age>40 and gender ='female'
union
select first_name, last_name,salary, "highly paid employed" as label from employee_salary where salary>70000 
order by first_name, last_name;
