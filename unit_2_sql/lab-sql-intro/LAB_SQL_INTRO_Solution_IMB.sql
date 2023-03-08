############################################
############# LAB | SQL Intro ##############
############################################


# 1. Use sakila database.  (Done)
USE sakila;

# 2. Get all the data from tables actor, film and customer.
SELECT *
FROM actor, film, customer;

# 3. Get film titles.
SELECT title
FROM film;

# 4. Get unique list of film languages under the alias language. 
SELECT COUNT(DISTINCT language_id) AS unique_film_languages
FROM film;

# 5.
	# 5.1 Find out how many stores does the company have?
	SELECT COUNT(store_id) AS total_stores
    FROM store;
    
	# 5.2 Find out how many employees staff does the company have?
	SELECT COUNT(staff_id) AS total_employees
    FROM staff;

	# 5.3 Return a list of employee first names only?
    SELECT first_name AS staff_first_name
    FROM staff;