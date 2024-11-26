SHOW databases;

-- DROP DATABASE lab_mysql;

CREATE DATABASE lab_mysql;

USE lab_mysql;


CREATE TABLE cars(
car_pkid INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
vehicle_id_number CHAR (17),
manufacturer VARCHAR(20),
model VARCHAR(20),
`year` INT,
color VARCHAR(20)
);
CREATE TABLE customers(
customer_pkid INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
customer_id INT,
`name` VARCHAR(20),
phone_number VARCHAR(20),
email VARCHAR(40),
address VARCHAR(60),
city VARCHAR (20),
state VARCHAR (20),
country VARCHAR(20),
zip_code INT
);
CREATE TABLE salespersons(
salesperson_pkid INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
staff_id VARCHAR(20),
name VARCHAR (20),
store VARCHAR(20)
);
CREATE TABLE invoices(
invoice_pkid INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
invoice_number INT,
date DATE,
car_pkid INT,
FOREIGN KEY (car_pkid) REFERENCES cars(car_pkid),
customer_pkid INT,
FOREIGN KEY (customer_pkid) REFERENCES customers(customer_pkid),
salesperson_pkid INT,
FOREIGN KEY (salesperson_pkid) REFERENCES salespersons(salesperson_pkid)
);






