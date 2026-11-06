-- Q-1 : Database Initialization
show databases;
create database company_db;
use company_db;

-- Q-2 : Table Creation
create table employees(
	emp_id int primary key,
    emp_name varchar(50),
    department varchar(50),
    salary decimal(10,2)
);
desc employees;
select *from employees;

-- Q-3 : Inserting recorsds adn Queries

insert into employees values
(101, 'John Doe', 'HR', 45000),
(102, 'Jane Smith', 'IT', 60000),
(103, 'Robert Johnson', 'Finance', 55000),
(104, 'Emily Davis', 'Marketing', 48000),
(105, 'Michael Brown', 'IT', 75000);

# Query - 1 :
select *from employees;

# Query - 2 :
select emp_name, salary from employees;

# Query - 3 :
select * from employees where salary > 50000;


-- Q-4 : Queries

# Query - 1 :
insert into employees values(106, "XYZ", "Sales", 80000);

# Query - 2 :
update employees set salary = salary + 5000 where emp_id = 103;

# Query - 3 :
delete from employees where emp_id = 104;


-- Q-5 : New Table

create table products(
	product_id int primary key,
    product_name varchar(50),
    category varchar(50),
    price decimal(10,2),
    stock_quantity int
);
select * from products;

# Query :
insert into products values
(1, 'Laptop', 'Electronics', 899.99, 15),
(2, 'T-Shirt', 'Clothing', 19.99, 50),
(3, 'Headphones', 'Electronics', 79.99, 0),
(4, 'Jeans', 'Clothing', 49.99, 25),
(5, 'Coffee Maker', 'Appliances', 120.00, 8);


-- Q-6 : Select Queries 

# Query - 1 :
select *from products;

# Query - 2 :
select * from products where category = "Electronics";

# Query - 3 :
select * from products where price < 100;


-- Q-7 : Update Queries

# Query - 1 :
update products set price = price * 1.10 where category = "Clothing";

# Query - 2 :
update products set stock_quantity = 100 where product_id = 3;


-- Q-8 : Delete Queries

# Query - 1 :
delete from products where product_id = 5;

# Query - 2 :
delete from products where stock_quantity = 0;