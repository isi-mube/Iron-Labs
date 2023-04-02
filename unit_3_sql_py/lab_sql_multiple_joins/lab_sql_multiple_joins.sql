############################################
################# UNIT | 3 ################# 
############################################
######## LAB | SQL | MULTIPLE JOINS ######## 
############################################

USE sakila;

## 01 ## Write a query to display for each store its store ID, city, and country.
-- Which tables? store, address, city
-- Which keys? adress_id, city_id
SELECT S.store_id, C.city, C.country_id
FROM sakila.store AS S
JOIN sakila.address AS A ON S.address_id = A.address_id
JOIN sakila.city AS C ON A.city_id = C.city_id;

## 02 ## Write a query to display how much business, in dollars, each store brought in.
-- Which tables? payment, rental, inventory
-- Which keys? rental_id, inventory_id
SELECT store_id, SUM(payment.amount) AS total_money
FROM sakila.store
JOIN customer ON store.store_id = customer.store.id
JOIN payment ON customer.customer_id = payment.customer_id
GROUP BY store.store_id;

## 03 ## What is the average running time of films by category?
-- Which tables? film, film_category, category
-- Which keys? film_id, category_id
SELECT C.name AS category, AVG(F.length) AS average_running_time
FROM sakila.film AS F
JOIN sakila.film_category AS FC ON F.film_id = FC.film_id
JOIN sakila.category AS C ON FC.category_id = C.category_id
GROUP BY C.name
ORDER BY C.name;

## 04 ## Which film categories are longest?
-- Which tables? film, film_category, category
-- Which keys? film_id, category_id
SELECT C.name AS category, AVG(F.length) AS average_running_time
FROM sakila.film AS F
JOIN sakila.film_category AS FC ON F.film_id = FC.film_id
JOIN sakila.category AS C ON FC.category_id = C.category_id
GROUP BY C.name
ORDER BY AVG(F.length) DESC;

## 05 ## Display the most frequently rented movies in descending order.
-- Which tables? rental, inventory, film
-- Which keys? inventory_id, film_id
SELECT F.title, COUNT(R.rental_id) AS rental_count
FROM sakila.rental AS R
JOIN sakila.inventory AS I ON R.inventory_id = I.inventory_id
JOIN sakila.film AS F ON I.film_id = F.film_id
GROUP BY F.title
ORDER BY rental_count DESC;

## 06 ## List the top five genres in gross revenue in descending order.
-- Which tables? category, film_category, film, inventory, rental, payment
-- Which keys? category_id, film_id, inventory_id, rental_id
SELECT C.name AS genre, SUM(P.amount) AS gross_revenue
FROM sakila.category AS C
JOIN sakila.film_category AS FC ON C.category_id = FC.category_id
JOIN sakila.film AS F ON FC.film_id = F.film_id
JOIN sakila.inventory AS I ON F.film_id = I.film_id
JOIN sakila.rental AS R ON I.inventory_id = R.inventory_id
JOIN sakila.payment AS P ON R.rental_id = P.rental_id
GROUP BY C.name
ORDER BY gross_revenue DESC
LIMIT 5;

## 07 ## Is "Academy Dinosaur" available for rent from Store 1?
-- Which tables? film, inventory, rental
-- Which keys? film_id, inventory_id
SELECT F.title AS Academy_Dinosaur, I.store_id, COUNT(*) - COUNT(R.return_date) AS available_copies
FROM sakila.film AS F
JOIN sakila.inventory AS I ON F.film_id = I.film_id
LEFT JOIN sakila.rental AS R ON I.inventory_id = R.inventory_id
WHERE F.title = 'Academy Dinosaur' AND I.store_id = 1
GROUP BY F.title, I.store_id;

-- IMB