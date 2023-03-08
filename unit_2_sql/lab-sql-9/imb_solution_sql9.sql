############################################
########### LAB | SQL Queries 9 ############ 
############################################

USE sakila;

## 01 ## Create a table rentals_may to store the data from rental table with information for the month of May.
CREATE TABLE rentals_may (
rental_id int,
rental_date date,
inventory_id int,
customer_id int,
return_date date,
staff_id text,
last_update date);

## 02 ## Insert values in the table rentals_may using the table rental, filtering values only for the month of May.
INSERT INTO rentals_may
SELECT rental_id, rental_date, inventory_id, customer_id, return_date, staff_id, last_update FROM rental
WHERE MONTH(rental_date) = 5;

SELECT * 
FROM rentals_may;

## 03 ## Create a table rentals_june to store the data from rental table with information for the month of June.
CREATE TABLE rentals_june (
rental_id int,
rental_date date,
inventory_id int,
customer_id int,
return_date date,
staff_id text,
last_update date);

## 04 ## Insert values in the table rentals_june using the table rental, filtering values only for the month of June.
INSERT INTO rentals_june
SELECT rental_id, rental_date, inventory_id, customer_id, return_date, staff_id, last_update FROM rental
WHERE MONTH(rental_date) = 6;

## 05 ## Check the number of rentals for each customer for May.
SELECT customer_id, COUNT(customer_id) AS number_of_rentals_per_costumer
FROM rentals_may
GROUP BY customer_id;

## 06 ## Check the number of rentals for each customer for June.
SELECT customer_id, COUNT(customer_id) AS number_of_rentals_per_costumer
FROM rentals_june
GROUP BY customer_id;