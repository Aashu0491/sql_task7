SELECT * FROM public.customer
select * from sales
select count(distinct state) from customer
select distinct state from customer
--(1)
select * from sales
select c.state,sum(s.sales)as sum_of_sales,sum(quantity)as sum_of_qty,sum(discount)as sum_discount,sum(profit)as sum_of_profit from sales as s
inner join customer as c
on c.customer_id = s.customer_id
group by c.state

select c.state,avg(s.sales)as avg_of_sales,avg(quantity)as avg_of_qty,avg(discount)as avg_discount,avg(profit)as avg_of_profit from sales as s
inner join customer as c
on c.customer_id = s.customer_id
group by c.state

select c.state,min(s.sales)as min_of_sales,min(quantity)as min_of_qty,min(discount)as min_discount,min(profit)as min_of_profit from sales as s
inner join customer as c
on c.customer_id = s.customer_id
group by c.state

select c.state,max(s.sales)as max_of_sales,max(quantity)as max_of_qty,max(discount)as max_discount,max(profit)as max_of_profit from sales as s
inner join customer as c
on c.customer_id = s.customer_id
group by c.state

select c.state,count(s.sales)as count_of_sales,count(quantity)as count_of_qty,count(discount)as count_discount,count(profit)as count_of_profit from sales as s
inner join customer as c
on c.customer_id = s.customer_id
group by c.state
--(2)
select state,city,avg(age)as avg_of_customer_age from customer group by state,city

--(3)
select p.product_name,sum(s.sales)/sum(s.quantity) as sales_per_qty from sales as s 
inner join product as p
on p.product_id=s.product_id
where s.order_date between '2017-01-01' and '2018-12-31'
group by p.product_name
--
select product_name from sales as s
	inner join product as p
	on p.product_id=s.product_id
where s.order_date between '2017-01-01' and '2018-12-31'
