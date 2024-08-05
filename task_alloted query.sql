SELECT * FROM public.employee
ORDER BY emp_id ASC 
select * from company
	
--to find the data of count of employees and sum of salary with dept_name
	
select c.dept_name,count (e.emp_id)as employees_count,sum (e.salary)as total_salary from company as c
inner join employee as e
on e.dept_no = c.dept_no
group by c.dept_name

--to get max salary as per dept_name 
	
select c.dept_name,max(e.salary) from company as c
inner join employee as e
on e.dept_no=c.dept_no
group by c.dept_name,e.emp_name

--to get maximum salary in desc order and count of location with all employees and email
	
select e.emp_name,max(e.salary),count(c.location) from company as c
inner join employee as e
on e.dept_no=c.dept_no
group by e.emp_name,dept_email
order by max(e.salary) DESC

--to get avg of salary with all emp_name,emp_id
select emp_name,emp_id, avg(salary) from employee group by emp_name,emp_id