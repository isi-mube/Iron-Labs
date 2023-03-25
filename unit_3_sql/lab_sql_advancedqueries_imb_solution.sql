############################################
################# UNIT | 3 ################# 
############################################
####### LAB | SQL | Advanced Queries ####### 
############################################

USE sakila;

# 01. For each film, list actor that has acted in more films
	-- Which tables? film_actor
	-- Which keys? actor_id, film_id
    
WITH actor_film_count AS -- CTE to count the number of films per actor
    (SELECT actor_id, COUNT(film_id) AS acted
    FROM film_actor
    GROUP BY actor_id)
SELECT F.film_id, F.actor_id, A.acted
FROM film_actor AS F
	JOIN actor_film_count AS A 
    ON F.actor_id = A.actor_id -- Join film_actor with CTE
WHERE A.acted = -- Filter: actors with most films for each film_id
    (SELECT MAX(B.acted) -- max acted count for each film_id
    FROM film_actor AS FA
		JOIN actor_film_count AS B 
        ON FA.actor_id = B.actor_id -- Join film_actor with CTE
    WHERE F.film_id = FA.film_id)
ORDER BY F.film_id ASC;


-- I got lost in this SQL, and I used this as a reference (JesusC answer)
WITH actor_film AS
	(SELECT actor_id, COUNT(film_id) AS acted
     FROM film_actor
     GROUP BY actor_id),
ranking AS
	(SELECT F.film_id, F.actor_id, A.acted, RANK() OVER (PARTITION BY film_id ORDER BY acted DESC) AS rank_actors
     FROM film_actor AS F
		JOIN actor_film AS A
		USING (actor_id))
SELECT film_id, actor_id
FROM ranking
WHERE rank_actors = 1;
