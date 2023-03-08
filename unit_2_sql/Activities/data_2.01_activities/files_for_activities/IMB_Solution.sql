############################################
############## 2.02 Actvities ##############
############################################


######################
## 2.02  Activity 1 ##
######################


# Select districts and salaries (from the district table) where salary is greater than 10000. 
	# Return columns as district_name and average_salary.
SELECT A2 AS district_name, A11 AS average_salary
FROM district
WHERE A11 > 10000;

# Select those loans whose contract finished and were not paid.
SELECT *
FROM loan
WHERE status = 'B';

# Select cards of type junior. Return just first 10 in your query.
SELECT *
FROM card
WHERE type = 'junior';

######################
## 2.02  Activity 2 ##
######################


# Select those loans whose contract finished and not paid back. 
	# Return the debt value from the status you identified in the last activity, 
		# together with loan_id and account_id.
SELECT loan_id, account_id, status
FROM loan
WHERE status = 'B';

# Calculate the urban population for all districts.
SELECT SUM(A4) AS urban_population
FROM district;

-- 3. On the previous query result - re-run it but filtering out districts where the rural population is greater than 50%.

--
-- 2.02 Activity 3
--
-- Simple queries
--
-- 1. Get all junior cards issued last year.

-- 2. Get the first 10 transactions for withdrawals that are not in cash. You will need the extended case study information to tell you which values are required here, and you will need to refer to conditions on two columns.
-- Refine your query from last activity on loans whose contract finished and not paid back - filtered to loans where they were left with a debt bigger than 1000. Return the debt value together with loan_id and account_id. Sort by the highest debt value to the lowest.

-- 3. Refine your query from last activity on loans whose contract finished and not paid back - filtered to loans where they were left with a debt bigger than 1000. Return the debt value together with loan_id and account_id. Sort by the highest debt value to the lowest.

--
-- 2.02 Activity 4
--
-- Simple queries
--
-- 1. Get the biggest and the smallest transaction with non-zero values in the database (use the trans table in the bank database).

-- 2. Get account information with an extra column year showing the opening year as 'YY'. Eg., 1995 will show as 95.