use company_db;

-- Q-1 : Create Table Students ANd insert records

create table students(
	student_id int primary key,
    name varchar(50),
    age int,
    grade varchar(10),
    email varchar(100)
);

insert into students values
(1,"Alice",20,"A","alice@example.com"),
(2,"Bob",22,"B","bob@example.com"),
(3,"Charlie",21,"A","charlie@example.com");

select *from students;


-- Q-2 : Create table products and add records

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

select * from products;


-- Q-3 : Students Queries : 

select *from students;
select name, grade from students;


-- Q-4 : Products Queries : 

select * from products where category = "Electronics";
select * from products where price > 500;

-- Q-5 : Distinct Keyword :
select  distinct category from products;

-- Q-6 : Update Grade : 
update students set grade = "A" where student_id = 2;
select *from students;

-- Q-7 : Update Products : 
update products set price = price * 1.10;
select * from products;

update products set stock_quantity = 50 where product_id = 3;
select * from products;

-- Q-8 : Email Update : 
update students set email = "gradeA@example.com" where grade = "A";
select * from students;

-- Q-9 : delete student : 
delete from students where student_id = 3;

-- Q-10 : delete products : 
delete from products where stock_quantity = 0;
select *from products;

-- Q-11 : delete students : 
delete from students where age > 21;
select *from students;

-- Q-12 : Product Queries : 
insert into products values(6,"Smartphone","Electronics",699.99,20);

update products set price = 749.99 where product_id = 6;

delete from products where product_id = 6;
select *from products;

-- Q- 13 : Students Queries : 
alter table students add column(address varchar(100));

insert into students values(4,"XYZ","20","B","xyz@gmail.com","1090,New Street, abc Area, any City,Gujarat");

update students set address = "Unknown" where address is NULL;

delete from students where grade = "B";
select *from students;