############################################
######### SQL Aggregation Revisited ########
############################################

USE sakila;

## 01 ## Select the first name, last name, and email address of all the customers who have rented a movie.
SELECT 
    first_name, last_name, email
FROM
    customer
WHERE
    active = 1
ORDER BY last_name;

## 02 ## What is the average payment made by each customer (display the customer id, customer name (concatenated), and the average payment made).
SELECT 
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS full_name,
    ROUND(AVG(p.amount), 2) AS avg_payment
FROM
    customer AS c
        JOIN
    payment AS p ON p.customer_id = c.customer_id
GROUP BY c.customer_id , full_name;

## 03 ## Select the name and email address of all the customers who have rented the "Action" movies.
# Write the query using multiple join statements
# Write the query using sub queries with multiple WHERE clause and IN condition
# Write the query using sub queries with multiple WHERE clause and IN condition
SELECT DISTINCT
    CONCAT(c.first_name, ' ', c.last_name) AS full_name, c.email
FROM
    customer AS c
        JOIN
    rental AS r ON c.customer_id = r.customer_id
        JOIN
    inventory AS i ON r.inventory_id = i.inventory_id
        JOIN
    film_category AS fc ON i.film_id = fc.film_id
        JOIN
    category AS ca ON fc.category_id = ca.category_id
WHERE
    ca.name = 'Action'
ORDER BY full_name;

## 04 ## Use the case statement to create a new column classifying existing columns as either or high value transactions based on the amount of payment. 
# If the amount is between 0 and 2, label should be low and if the amount is between 2 and 4, the label should be medium, and if it is more than 4, then it should be high.
SELECT 
    amount,
    CASE
        WHEN amount <= 2 THEN 'low'
        WHEN amount > 2 AND amount <= 4 THEN 'medium'
        ELSE 'high'
    END AS label
FROM
    payment;