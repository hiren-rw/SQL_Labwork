use company_db;

-- Q-1 : create table sales : 
create table sales(
	sale_id int primary key,
    product_name varchar(50),
    category varchar(50),
    price decimal(10,2),
    quantity_sold int,
    sale_date date
);

insert into sales values
(1, "Smartphone", "Electronics", 699.99, 15, "2023-12-15"),
(2, "Winter Jacket", "Clothing", 120.00, 25, "2024-01-10"),
(3, "4K TV", "Electronics", 550.00, 8, "2024-02-05"),
(4, "Office Chair", "Furniture", 150.00, 40, "2023-11-20"),
(5, "Running Shoes", "Clothing", 85.00, 60, "2024-03-01"),
(6, "Dining Table", "Furniture", 450.00, 5, "2024-01-22"),
(7, "Wireless Headphones", "Electronics", 99.99, 55, "2023-05-14"),
(8, "Designer Handbag", "Clothing", 250.00, 12, "2024-04-18"),
(9, "Coffee Table", "Furniture", 180.00, 15, "2024-02-28"),
(10, "Gaming Laptop", "Electronics", 1200.00, 4, "2024-01-05");

select *from sales;

# Queries : 
select * from sales where category = "Electronics";

select *from sales where price > 500;

select * from sales where sale_date > "2024-01-01";


-- Q-2 : AGGREGATION & HAVING CLAUSE : 

# Group sales by category, total the quantity
select category,sum(quantity_sold) as Total_Quantity_Sold from sales 
group by category;

# filter for total quantity > 50
select category,sum(quantity_sold) as Total_Quantity_Sold from sales 
group by category having Total_Quantity_Sold > 50;   # use 80

-- Q-3 : LIMIT & TOP RECORDS : 
# Retrieve the first 5 records from the sales table
select * from sales limit 5;

# Retrieve the top 3 most expensive products
select * from sales order by price desc limit 3;

-- Q.4: LOGICAL AND FILTER
# retrive from sales where category is 'Clothing' AND price is greater than 100
select * from sales where category = "Clothing" and price > 100;

-- Q.5: LOGICAL OR FILTER
# Retrieve all records where category is either 'Electronics' OR 'Furniture'
select * from sales where category = "Electronics" or category = "Furniture";

-- Q.6: LOGICAL NOT FILTERS
# Retrieve all records where the category is NOT 'Clothing'
select * from sales where category != "Clothing";

# -- Find all records where the price is NOT greater than 300
select * from sales where not price > 300;

-- Q.7: MULTI-SORTING USE CASES (ORDER BY)
# Sort the sales table by price in ascending order
select * from sales order by price;

# Sort the sales table by sale_date in descending order
select * from sales order by sale_date desc;

# Sort by category (alphabetically) and then by price (highest to lowest)
select * from sales order by category, price desc;

-- Q.8: GROUP BY AND HAVING CLAUSE USE CASES
# 8.1: Total revenue for each category
select category, sum(price*quantity_sold) as Total_Revenue 
from sales group by category;

# 8.2: Average price for each category
select category, avg(price) as Average_Price
from sales group by category;

# 8.3: Filter categories where average price is greater than 200
select category, avg(price) as Average_Price
from sales group by category having Average_Price > 200;

# 8.4: Group by both category and product_name for total quantity sold
select category, product_name, sum(quantity_sold) as total_quantity_sold
from sales group by category, product_name;


-- Q.9: AGGREGATE FUNCTIONS DEMONSTRATION
# 9.1: Total revenue from all sales combined
select sum(price*quantity_sold) as total_revenue
from sales;

# 9.2: Average price of all products
select avg(price) as average_price from sales;

# 9.3: Highest and lowest product price
select max(price) as highest_price, min(price) as lowest_price from sales;

# 9.4: Retrieve the product with the maximum quantity sold
select product_name, quantity_sold from sales
where quantity_sold = (select max(quantity_sold) from sales);

# 9.5: Count the total number of sales records
select count(*) as total_sales_records from sales;

# 9.6: Count the number of distinct categories
select count(distinct category) as total_distinct_category from sales;


-- Q.10: TOP CATEGORIES BY REVENUE (LIMIT)
# Retrieve top 3 categories with highest revenue 
select category, sum(price*quantity_sold) as total_revenue
from sales group by category 
order by total_revenue limit 3;

# sort in descending order
select category, sum(price*quantity_sold) as total_revenue
from sales group by category 
order by total_revenue desc limit 3;


-- Q.11: MIXED COMPLEX LOGICAL FILTERS (PRECEDENCE)
# Retrieve sales for Electronics or Furniture with a price over 200
select * from sales
where (category = "Electronics" or category = "Furniture") and price > 200;


-- Q.12: DAILY REVENUE ANALYSIS
# Group sales by date and find the top 3 highest-earning dates
select sale_date, sum(price*quantity_sold) as total_revenue
from sales group by sale_date;

 # find the top 3 highest-earning dates
select sale_date, sum(price*quantity_sold) as daily_revenue
from sales group by sale_date order by daily_revenue desc limit 3;