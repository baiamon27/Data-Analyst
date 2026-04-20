use analyst;
select * from employee_demographics;
select gender, avg(age) as average_age from employee_demographics group by gender;
select occupation from employee_salary group by occupation;
select gender, avg(age) as average_age, max(age) as maximum_age,min(age) as minimuum_age, count(age) from employee_demographics group by gender;


select gender, avg(age) as average_age, max(age) as maximum_age,min(age) as minimuum_age, count(age) from employee_demographics group by gender;
select * from employee_demographics order by first_name asc;
select * from employee_demographics order by first_name desc;
select * from employee_demographics order by 5,4 desc;
