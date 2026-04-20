-- CTEs (common table expression

with cte_example as
(
Select gender, AVG(salary) as avgsalary, Max(salary) as maxsal, min(salary) as minsal, count(salary) as countsal
from employee_demographics d
join employee_salary s
on d.employee_id= s.employee_id
group by gender
)
select avg(avgsalary) from cte_example
;


-- subquery

select avg(avgsalary)
from
(
Select gender, AVG(salary) as avgsalary, Max(salary) as maxsal, min(salary) as minsal, count(salary) as countsal
from employee_demographics d
join employee_salary s
on d.employee_id= s.employee_id
group by gender
) example_subquery
;


with cte_example as
(
Select employee_id, gender, birth_date
from employee_demographics d
where birth_date> '1985-01-01'
),
cte_example2 as 
(
select employee_id, salary
from employee_salary
where salary> 50000
)
select * from cte_example as e
join cte_example2 as d
on e.employee_id = d.employee_id
;


with cte_example (Gender, AVG_SAL, MAX_SAL, MIN_SAL, COUNT_SAL) as
(
Select gender, AVG(salary) as avgsalary, Max(salary) as maxsal, min(salary) as minsal, count(salary) as countsal
from employee_demographics d
join employee_salary s
on d.employee_id= s.employee_id
group by gender
)
select * from cte_example
;