############################################
########### LAB | SQL Queries 3 ############ 
############################################

USE sakila;

# 1 # How many distinct (different) actors' last names are there?
SELECT COUNT(DISTINCT last_name)
FROM actor;

# 2 # In how many different languages where the films originally produced? (Use the column language_id from the film table)
SELECT COUNT(DISTINCT language_id)
FROM language;

# 3 # How many movies were released with "PG-13" rating?
SELECT *
FROM film
WHERE rating = "PG-13";

# 4 # Get 10 the longest movies from 2006.
SELECT *
FROM film
ORDER BY length desc
LIMIT 10;

# 5 # How many days has been the company operating (check DATEDIFF() function)?
SELECT DATEDIFF("2023-02-21", DATE_FORMAT(last_update,"%Y-%m-%d")) AS days_of_operating 
FROM store;

# 6 # Show rental info with additional columns month and weekday. Get 20.
SELECT *, SUBSTRING(rental_date, 6, 2) AS month, SUBSTRING(rental_date, 9, 2) AS weekday
FROM rental
LIMIT 20;

# 7 # Add an additional column day_type with values 'weekend' and 'workday' depending on the rental day of the week.
SELECT *,
CASE
	WHEN (DAYNAME(rental_date) = "Saturday" OR DAYNAME(rental_date) = "Sunday") THEN "weekend"
	ELSE "workday" 
    END AS date_type
FROM rental;

# 8 # How many rentals were in the last month of activity?
SELECT COUNT(*)
FROM rental
WHERE rental_date LIKE '2006-02%';