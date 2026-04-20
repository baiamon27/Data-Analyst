-- window function

select dem.first_name, dem.last_name, gender, avg(salary) as avg_sal
from employee_demographics as dem
join employee_salary as emp
on dem.employee_id = emp.employee_id
group by dem.first_name, dem.last_name, gender;

select * from employee_demographics;
select * from employee_salary;


select gender, avg(salary) over()
from employee_demographics as dem
join employee_salary as emp
on dem.employee_id = emp.employee_id;

select dem.first_name, dem.last_name, gender, avg(salary) over(partition by gender)
from employee_demographics as dem
join employee_salary as emp
on dem.employee_id = emp.employee_id;

select dem.first_name, dem.last_name, gender,
sum(salary) over(partition by gender)
from employee_demographics as dem
join employee_salary as emp
on dem.employee_id = emp.employee_id;

select dem.first_name, dem.last_name, gender, salary, 
sum(salary) over(partition by gender order by dem.employee_id) as rolling_total
from employee_demographics as dem
join employee_salary as emp
on dem.employee_id = emp.employee_id;

select dem.first_name, dem.last_name, gender, salary, 
row_number() over()
from employee_demographics as dem
join employee_salary as emp
on dem.employee_id = emp.employee_id;

select dem.first_name, dem.last_name, gender, salary, 
row_number() over(partition by gender)
from employee_demographics as dem
join employee_salary as emp
on dem.employee_id = emp.employee_id;

select dem.first_name, dem.last_name, gender, salary, 
row_number() over(partition by gender order by salary desc) as descsalary_rownum ,
row_number() over(partition by gender) as row_number_bygender
from employee_demographics as dem
join employee_salary as emp
on dem.employee_id = emp.employee_id;

select dem.employee_id, dem.first_name, dem.last_name, gender, salary, 
row_number() over(partition by gender order by salary desc) as descsalary_rownum ,
rank() over(partition by gender order by salary desc) as rank_,
dense_rank() over(partition by gender order by salary desc) as rank_dense
from employee_demographics as dem
join employee_salary as emp
on dem.employee_id = emp.employee_id;