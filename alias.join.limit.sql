select * from employee_demographics;

select occupation, avg(salary) from employee_salary
where occupation like "%manager%"
 group by occupation having avg(salary)>75000;
 
 select * from employee_demographics limit 3;
 
 insert into employee_demographics(employee_id,first_name,last_name,age,gender,birth_date)
 values(2,'Ron', 'Swanson', 46, 'Female','1999-09-10');
 select * from employee_salary;
 
 #delete from employee_demographics where employee_id=2;
 
 select * from employee_demographics order by age desc limit 4,3;
 select * from employee_demographics order by age desc;

#join(inner)
 select * from employee_demographics as e 
 join employee_salary as s on e.employee_id = s.employee_id;
 select e.employee_id, age, occupation from employee_demographics as e 
 inner join employee_salary as s on e.employee_id=s.employee_id;

#outer join (left & right)
 select * from employee_demographics as e left join employee_salary as s 
 on e.employee_id = s.employee_id;

 select * from employee_demographics as e right join employee_salary as s 
 on e.employee_id = s.employee_id;

 select e.employee_id, age, occupation from employee_demographics as e
 left join employee_salary as s on e.employee_id=s.employee_id;

 select e.employee_id, age, occupation from employee_demographics as e
 right join employee_salary as s on e.employee_id=s.employee_id;


select * from employee_salary as e join employee_salary as c on e.employee_id +1 =c.employee_id;

select e.employee_id as santa, e.first_name as first_n, e.last_name as last_n,
c.employee_id as santa, c.first_name as fn, c.last_name as ln from employee_salary as e 
join employee_salary as c on e.employee_id +1 =c.employee_id;

#join multiple tables together

 select * from employee_demographics as e join employee_salary as s on e.employee_id = s.employee_id;

select * from parks_departments;

 select * from employee_demographics as e
 inner join employee_salary as s 
 on e.employee_id = s.employee_id
 inner join parks_departments as p
 on s.dept_id=p.department_id;
 
 select es.employee_id as santa,
 es.first_name as fn_santa,
 es.last_name as ln_santa,
 es1.employee_id as emp_name,
 es1.first_name as emp_fn,
 es1.last_name as emp_ln 
 from employee_salary as es 
 join employee_salary as es1
 on es.employee_id +1 = es1.employee_id;


--  multiple tables together
select * from employee_demographics as ed
inner join employee_salary as sal
on ed.employee_id = sal.employee_id
inner join parks_departments as pd
on sal.dept_id= pd.department_id;

select * from parks_departments;