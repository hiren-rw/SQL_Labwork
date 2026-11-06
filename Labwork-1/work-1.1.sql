
/* Q.2 & Q.3 : Environment Setup 

• Install XAMPP: Download and run the XAMPP installer for your operating system.
• Start Services: Open the XAMPP Control Panel and click Start next to Apache and MySQL.
• Open phpMyAdmin: Navigate to "http://localhost/phpmyadmin" in your web browser.
• Create School Database: Click New in the left sidebar, type school_db into the database name box, and click Create.
*/ 


# Q-1 : List all databases
show databases;

# Q.4 : Create the inventory database
create database inventory_db;

# ---------------------------------------------------------------------------------
# Q.5: TABLE CREATION AND DATA INSERTION

# Switch to the school database
create database school_db;
use school_db;

# Create the students table with required attributes
create table students (
    id int,
    name varchar(30),
    age int,
    class varchar(10),
    grade varchar(5)
);

-- Insert 5 student records into the table
insert into students (name, age, class, grade) values
('Alice Johnson', 15, 'Grade 10', 'A'),
('Bob Smith', 16, 'Grade 11', 'B+'),
('Charlie Brown', 15, 'Grade 10', 'A-'),
('Diana Prince', 17, 'Grade 12', 'A+'),
('Evan Wright', 16, 'Grade 11', 'B');

-- Verify that all 5 records inserted properly
select * from students;


# Q.6 : Create the company database
create database company_db;