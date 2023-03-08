-- LAB | SQL Intro
-- Instructions
-- 1. Use sakila database.  (Done)
USE sakila;
-- 2. Get all the data from tables actor, film and customer.
SELECT *
FROM actor, film, customer;
-- 3. Get film titles.
SELECT title
FROM film;
-- 4. Get unique list of film languages under the alias language. 
SELECT count(language_id) AS "languages" FROM film;
-- 5.
-- 5.1 Find out how many stores does the company have?
SELECT count(store_id) AS "Stores" FROM store;
-- 5.2 Find out how many employees staff does the company have?
SELECT staff_id AS "Staff" FROM staff;
-- 5.3 Return a list of employee first names only?
SELECT first_name AS "Staff first names" FROM staff;
--
-- LAB | SQL Queries 2
-- Instructions
-- . Select all the actors with the first name ‘Scarlett’.
SELECT * FROM actor
WHERE first_name="Scarlett";
-- 2. Select all the actors with the last name ‘Johansson’.
SELECT * FROM actor
WHERE last_name="Johansson";
-- 3. How many films (movies) are available for rent?
SELECT count(film_id) as "number of films" FROM film;
SELECT * FROM film;
-- 4. How many films have been rented?
SELECT count(*) FROM film where rental_duration > 0; 
-- 5. What is the shortest and longest rental period?
SELECT max(rental_duration) AS "max", min(rental_duration) AS "min" FROM film;
-- 6. What are the shortest and longest movie duration? Name the values max_duration and min_duration.
SELECT max(length) AS "max_duration", min(length) as "min_duration" FROM film;
-- 7. What's the average movie duration?
SELECT avg(length) AS "Average_length" FROM film;
-- 8. What's the average movie duration expressed in format (hours, minutes)?

-- 9. How many movies longer than 3 hours?

-- 10. Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
-- 11. What's the length of the longest film title?]
SELECT max(length) AS 