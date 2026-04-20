select first_name, last_name,
case 
when age <=30 then 'young' 
end as young
from employee_demographics;

select first_name, last_name,
case 
when age <=30 then 'young' 
when age between 31 and 50 then 'old'
when age >=50 then 'on death door'
end as age_term
from employee_demographics;

-- pay increase and bonus
-- <50000 = 5%
-- >=50000 = 7%
-- finance = 10 % bonus

select first_name, last_name, salary,
case
when salary < 50000 then salary + (salary *0.05)
when salary >= 50000 then salary + (salary * 0.07)
end as salary_bonus,
case
when dept_id = 6 then salary +(salary*0.1)
end finance_bonus
from employee_salary;

