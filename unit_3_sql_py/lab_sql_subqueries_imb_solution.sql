############################################
################# UNIT | 3 ################# 
############################################
########## LAB | SQL | Subqueries ########## 
############################################

USE sakila;

# 01. How many copies of the film Hunchback Impossible exist in the inventory system?
	-- Which tables? inventory, film
	-- Which keys? film_id, inventory_id
SELECT film_id, inventory_id
FROM inventory
WHERE film_id IN 
	(SELECT film_id
	FROM film
	WHERE title = 'Hunchback Impossible');

# 02. List all films whose length is longer than the average of all the films.
	-- Which tables? film
	-- Which keys? length
SELECT title, length
FROM film
WHERE length > 
	(SELECT AVG(length)
	FROM film);

# 03. Use subqueries to display all actors who appear in the film Alone Trip.
	-- Which tables? film_actor, film
	-- Which keys? actor_id, film_id, title
SELECT actor_id, film_id
FROM film_actor
WHERE film_id IN 
	(SELECT film_id
	FROM film
	WHERE title = 'Alone Trip');
	
# 04. Sales have been lagging among young families, and you wish to target all family movies for a promotion. 
	# Identify all movies categorized as family films.
	-- Which tables? film, film_category, category
	-- Which keys? film_id, category_id
SELECT title
FROM film
WHERE film_id IN 
	(SELECT film_id
	FROM film_category AS FC JOIN category AS C USING (category_id)
	WHERE C.name = 'Family');
    
# 05. Get name and email from customers from Canada using subqueries. Do the same with joins.
	-- Which tables? customer, address, city, country
	-- Which keys? adress?id, city_id, country_id
-- Only subqueries (insane)
SELECT first_name, last_name, email
FROM customer
WHERE address_id IN (
    SELECT address_id
    FROM address
    WHERE city_id IN (
        SELECT city_id
        FROM city
        WHERE country_id IN (
            SELECT country_id
            FROM country
            WHERE country = 'Canada')));

-- With JOINS (better)                    
SELECT C.first_name, C.last_name, C.email, CO.country
FROM customer AS C 
JOIN address AS A ON C.address_id = A.address_id
JOIN city AS CI ON A.city_id = CI.city_id
JOIN country AS CO ON CI.country_id = CO.country_id
WHERE CO.country = 'Canada';

# 06. Which are films starred by the most prolific actor? 
	# Most prolific actor is defined as the actor that has acted in the most number of films. 
    # First you will have to find the most prolific actor and then use that actor_id to find the different films that he/she starred.
	-- Which tables? film, film_actor
	-- Which keys? title, film_id, actor_id
SELECT title
FROM film
WHERE film_id IN 
    (SELECT film_id
    FROM film_actor
    WHERE actor_id IN 
        (SELECT actor_id
        FROM 
            (SELECT actor_id, COUNT(film_id) AS n_films
            FROM film_actor
            GROUP BY actor_id
            ORDER BY n_films DESC
            LIMIT 1) 
		AS prolific_actor)
	);
            
# 07. Films rented by most profitable customer. You can use the customer table and payment table to find the most profitable customer ie the customer that has made the largest sum of payments
	-- Which tables? film, rental, payment
	-- Which keys? title, film_id, customer_id
SELECT title
FROM film
WHERE film_id IN 
    (SELECT film_id
    FROM rental
    WHERE customer_id IN 
        (SELECT customer_id
        FROM 
            (SELECT customer_id, SUM(amount) AS total_payments
            FROM payment
            GROUP BY customer_id
            ORDER BY total_payments DESC
            LIMIT 1) 
        AS most_profitable_customer)
    );
# 08. Get the client_id and the total_amount_spent of those clients who spent more than the average of the total_amount spent by each client.
	-- Which tables? payment
	-- Which keys? customer_id
SELECT customer_id, total_amount_spent
FROM
    (SELECT customer_id, SUM(amount) AS total_amount_spent
    FROM payment
    GROUP BY customer_id) AS customer_total_spent
WHERE total_amount_spent > 
    (SELECT AVG(total_amount_spent) AS avg_total_spent
    FROM 
        (SELECT customer_id, SUM(amount) AS total_amount_spent
        FROM payment
        GROUP BY customer_id) AS avg_spent);
        
-- IMB_solution