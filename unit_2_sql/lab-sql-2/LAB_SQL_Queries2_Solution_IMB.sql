############################################
########### LAB | SQL Queries 2 ############ 
############################################

USE sakila;

# 1. Select all the actors with the first name ‘Scarlett’.
SELECT *
FROM actor
WHERE first_name = 'Scarlett';

# 2. Select all the actors with the last name ‘Johansson’.
SELECT *
FROM actor
WHERE last_name = 'Johansson';

# 3. How many films (movies) are available for rent?
SELECT COUNT(DISTINCT film_id)
FROM film;

# 4. How many films have been rented?
SELECT count(*) AS rented_films
FROM film
WHERE rental_duration > 0; 

# 5. What is the shortest and longest rental period?
SELECT MIN(rental_duration) AS shortest_renting_period, MAX(rental_duration) AS longest_rental_period
FROM film;

# 6. What are the shortest and longest movie duration? Name the values max_duration and min_duration.
SELECT MIN(length) AS min_movie, MAX(length) AS max_movie
FROM film;

# 7. What's the average movie duration?
SELECT AVG(length) AS average_movie_length
FROM film;

# 8. What's the average movie duration expressed in format (hours, minutes)?
SELECT FLOOR(AVG(length)/60) AS hours, (FLOOR((AVG(length)/60 - FLOOR(AVG(length)/60))*60)) AS minutes
FROM film; 

# 9. How many movies longer than 3 hours?
SELECT *
FROM film
WHERE length > 180;

# 10. Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
SELECT UPPER(first_name) AS first_name, UPPER(last_name) AS last_name, LOWER(email) AS email
FROM staff;

# 11. What's the length of the longest film title?
SELECT MAX(length) AS max_movie
FROM film;