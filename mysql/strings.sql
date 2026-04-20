-- strings

select length("skyfall");

select first_name, length(first_name) from employee_demographics order by 2;

select upper("sky");
select lower("sKKy");

select first_name, upper(first_name) from employee_demographics;

select Trim("         sky        ");
select lTrim("         sky        ");
select rTrim("         sky        ");

select first_name, left(first_name,3) from employee_demographics;
select first_name, right(first_name,3) from employee_demographics;

select first_name, left(first_name,3), right(first_name,3) from employee_demographics;

select first_name, left(first_name,3), right(first_name,3), substring(first_name,2,2), birth_date, substring(birth_date,6,2) as month from employee_demographics;

select first_name, replace(first_name, 'a', 'z') from employee_demographics;

select locate("b","baiamon");

select first_name, locate('A', first_name) from employee_demographics;

select first_name, last_name, concat(first_name, ' ', last_name) as fullname from employee_demographics

