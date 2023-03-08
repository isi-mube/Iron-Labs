############################################
########### LAB | SQL Queries 8 ############ 
############################################


USE sakila;

## 01 ## Rank films by length (filter out the rows with nulls or zeros in length column). Select only columns title, length and rank in your output.
SELECT title, length, DENSE_RANK() OVER (ORDER BY length DESC) AS "Ranks"
FROM film
WHERE length > 0;

## 02 ## Rank films by length within the rating category (filter out the rows with nulls or zeros in length column). In your output, only select the columns title, length, rating and rank.
SELECT title, length, rating, DENSE_RANK() OVER (PARTITION BY rating ORDER BY length DESC) AS "Ranks"
FROM film
WHERE length > 0;

## 03 ## How many films are there for each of the categories in the category table? Hint: Use appropriate join between the tables "category" and "film_category".
SELECT C.category_id, C.name, COUNT(FC.film_id) AS how_many_films
FROM category AS C JOIN film_category AS FC ON C.category_id = FC.category_id
GROUP BY C.category_id, C.name
ORDER BY how_many_films DESC;

## 04 ## Which actor has appeared in the most films? Hint: You can create a join between the tables "actor" and "film actor" and count the number of times an actor appears.
SELECT A.actor_id, A.first_name, A.last_name, COUNT(FA.film_id) AS most_appeared_actor
FROM actor AS A JOIN film_actor AS FA ON A.actor_id = FA.actor_id
GROUP BY A.actor_id, A.first_name, A.last_name
ORDER BY most_appeared_actor DESC
LIMIT 1;

## 05 ## Which is the most active customer (the customer that has rented the most number of films)? 
      ## Hint: Use appropriate join between the tables "customer" and "rental" and count the rental_id for each customer.
SELECT C.customer_id, C.first_name, C.last_name, COUNT(R.rental_id) AS most_active_customer
FROM customer AS C JOIN rental AS R ON C.customer_id = R.customer_id
GROUP BY C.customer_id, C.first_name, C.last_name
ORDER BY most_active_customer DESC
LIMIT 1;

### Bonus ### Which is the most rented film? (The answer is Bucket Brotherhood).
SELECT
FROM
GROUP BY
ORDER BY
LIMIT;