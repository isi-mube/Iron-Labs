############################################
################# UNIT | 3 ################# 
############################################
####### LAB | SQL | SELF&Cross JOIN ######## 
############################################

USE sakila;

# 01. Get all pairs of actors that worked together.
	-- Which tables? film_actor, film
	-- Which keys? actor_id, title, 
SELECT FA1.actor_id AS actor_1_id, FA2.actor_id AS actor_2_id, F.title AS shared_movie
FROM film_actor AS FA1
    JOIN film_actor AS FA2 USING (film_id)
    JOIN film AS F USING (film_id)
WHERE FA1.actor_id <> FA2.actor_id; 

# 03. Get all pairs of customers that have rented the same film more than 3 times.
	-- Which tables? rental, inventory
	-- Which keys? customer_id, inventory_id
SELECT
	A.customer_id AS customer_1,
    B.customer_id AS customer_2,
    COUNT(C.film_id) AS same_rental
FROM rental AS A
	JOIN rental AS B ON
		A.inventory_id = B.inventory_id AND A.customer_id <> B.customer_id
	JOIN inventory AS C ON
		B.inventory_id = C.inventory_id
GROUP BY A.customer_id, B.customer_id, C.film_id
HAVING same_rental = 2; -- We do = 2 to visualize the changes, since there are none with 3 or more

# 03. Get all possible pairs of actors and films.
	-- Which tables? actor, film
	-- Which keys? actor_id, film_id
SELECT A.actor_id, F.film_id
FROM actor AS A
    JOIN film AS F;

-- IMB_solution