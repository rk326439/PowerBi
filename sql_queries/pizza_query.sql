-- creating database
create database pizza_data;
use pizza_data;

-- show table

show tables;
-- using table
select *from pizza_data;

-- find types of pizza_sizes from database
select distinct pizza_size from pizza_data;

-- find pizza_name from database
select distinct pizza_name from pizza_data;

select distinct pizza_category from pizza_data;

-- find total revenue
select sum(total_price) from pizza_data;

-- find revenue for each category
select pizza_category,sum(total_price) from pizza_data
group by pizza_category;

-- finding total orders
select count(distinct order_id) from pizza_data;

-- finding total pizza solde
select sum(quantity) from pizza_data;

-- order monthly trend
select month_no,month_name,count(distinct order_id) from pizza_data
group by month_no,month_name
order by month_no ASC;

-- order daily trend

select day_name, count(distinct order_id) from pizza_data
group by day_name
order by day_name ASC;

-- pizza sold for each category
select * from pizza_data;
select pizza_category, sum(quantity) from pizza_data
group by pizza_category;


-- Bottom 5 pizzas by revenue

select pizza_name, sum(total_price) from pizza_data
group by pizza_name
order by sum(total_price) asc
limit 5;


-- top 5 pizza by revenue

select pizza_name, sum(total_price) from pizza_data
group by pizza_name
order by sum(total_price) desc
limit 5;


-- top 5 pizzas by qty sold

select pizza_name, sum(quantity) from pizza_data
group by pizza_name
order by sum(quantity) desc
limit 5;

-- Bottom 5 pizzas by qty sold

select pizza_name, sum(quantity) from pizza_data
group by pizza_name
order by sum(quantity) asc
limit 5;

-- top 5 pizza sold by order id
-- Bottom 5 pizza sold by order
select pizza_name,count(distinct order_id) from pizza_data
group by pizza_name
order by count(distinct order_id) desc
limit 5;

-- Bottom 5 pizza sold by order
select pizza_name,count(distinct order_id) from pizza_data
group by pizza_name
order by count(distinct order_id) asc
limit 5;
