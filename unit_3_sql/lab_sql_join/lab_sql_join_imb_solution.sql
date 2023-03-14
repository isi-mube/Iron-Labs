############################################
################# UNIT | 3 ################# 
############################################
############# LAB | SQL | JOIN ############# 
############################################

USE sakila;

## 01 ## List the number of films per category.
SELECT category.name AS Category, COUNT(film_id) AS total_films
FROM film_category
INNER JOIN category
ON film_category.category_id = category.category_id
GROUP BY category.name;

## 02 ## Display the first and the last names, as well as the address, of each staff member.
SELECT staff.first_name, staff.last_name, address.address
FROM staff
INNER JOIN address 
ON staff.address_id = address.address_id;

## 03 ## Display the total amount rung up by each staff member in August 2005.
SELECT staff.first_name, staff.last_name, SUM(payment.amount) AS total_amount
FROM payment
INNER JOIN staff ON payment.staff_id = staff.staff_id
WHERE payment.payment_date >= '2005-08-01' AND payment.payment_date < '2005-09-01'
GROUP BY staff.staff_id;

## 04 ## List all films and the number of actors who are listed for each film.
SELECT title, COUNT(actor_id) AS actors_per_film
FROM film_actor
INNER JOIN film ON film_actor.film_id = film.film_id
GROUP BY film.film_id;

## 05 ## Using the payment and the customer tables as well as the JOIN command, 
	  ## list the total amount paid by each customer. List the customers alphabetically by their last names.
SELECT customer.first_name, customer.last_name, SUM(payment.amount) AS amount_paid
FROM payment
INNER JOIN customer ON payment.customer_id = customer.customer_id
GROUP BY customer.customer_id
ORDER BY customer.last_name ASC;