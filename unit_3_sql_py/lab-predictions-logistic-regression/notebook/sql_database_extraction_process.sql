############################################
-- Logistic Regression Practice
-- SQL Database Extraction
############################################

-- Defining the target; Our target is the probability of a movie being rented again or not in the future (low or high)
-- First, we determine the date range of the rental data.
SELECT MIN(DISTINCT(rental_date)), MAX(DISTINCT(rental_date)) FROM rental;

-- Next, we count the number of times a movie has been rented during this period.
SELECT I.film_id, COUNT(*) AS n_rentals
FROM rental AS R
	LEFT JOIN inventory AS I USING (inventory_id)
WHERE R.rental_date BETWEEN '2005-05-01' AND '2006-03-01'
GROUP BY I.film_id;

############################################
-- In Python, we will classify movies based on low/high (binary) demand renting rate by analyzing the total number of rentals for each film within the time period.
############################################

-- Feature Selection; We examine tables like film, rental, category, film_actor, and inventory to find appropriate features for our model.
SELECT * FROM film;
-- We exclude language_id as a feature because there's only one unique language_id (English) in our films for renting.
SELECT COUNT(DISTINCT language_id) AS unique_film_languages FROM film;

-- Initial features considered for the model were film_id, rental_duration, rental_rate, length, rating, special_features, name, & actor_id.
-- After some considerations (and help from TEA and classmates), we decide not to include actor_id. 
-- Including actor_id would be done if we had information about the actor's popularity or other features that could be relevant to why a movie is rented. 

-- Final feature selection:
SELECT F.film_id, F.rental_duration, F.rental_rate, F.length, F.rating, F.special_features, C.name
FROM film AS F
JOIN film_category AS FC USING (film_id)
JOIN category AS C USING (category_id);


############################################
-- Final query for data extraction:
WITH rental_counts AS
	(SELECT I.film_id, COUNT(*) AS n_rentals
	FROM rental AS R
		LEFT JOIN inventory AS I USING (inventory_id)
	WHERE R.rental_date BETWEEN '2005-05-01' AND '2006-03-01'
	GROUP BY I.film_id)
SELECT F.film_id, F.rental_duration, F.rental_rate, F.length, F.rating, F.special_features, C.name, RC.n_rentals
FROM film AS F
	JOIN film_category AS FC USING (film_id)
	JOIN category AS C USING (category_id)
	LEFT JOIN rental_counts AS RC USING (film_id);

-- Creating a table for our logistic data:
CREATE TABLE logistic_data AS
WITH rental_counts AS 
	(SELECT I.film_id, COUNT(*) AS n_rentals
    FROM rental AS R
    LEFT JOIN inventory AS I USING (inventory_id)
    WHERE R.rental_date BETWEEN '2005-05-01' AND '2006-03-01'
    GROUP BY I.film_id)
SELECT F.film_id, F.rental_duration, F.rental_rate, F.length, F.rating, F.special_features, C.name, RC.n_rentals
FROM film AS F
	JOIN film_category AS FC USING (film_id)
	JOIN category AS C USING (category_id)
	LEFT JOIN rental_counts AS RC USING (film_id);
-- Command for Python to extract all data selected:
SELECT * FROM logistic_data;

############################################
-- In Python, we will carry out the following steps:
-- Data Cleaning:
-- Encode categorical variables such as rating, special_features & name --> get dummies, for e.g.
-- Deal with NULL values from the LEFT JOIN with n_rental --> .fillna(0)
-- Create a new column/feature as the target `demand_rating` either low/high (binary) by analyzing and classifying n_rental based on their range.
-- EDA, processing, normalization/transformation, X-Y split, modeling, evaluation and report.
############################################