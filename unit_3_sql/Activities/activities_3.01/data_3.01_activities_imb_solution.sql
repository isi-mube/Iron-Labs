############################################
################# UNIT | 3 ################# 
############################################
############## ACTIVITIES 3.01 #############
############################################

USE bank;

################ ACTIVITY 1 ################
## 01 ## Get the number of clients by district, returning district name.
SELECT district.A2 AS district_name, COUNT(client.client_id) AS num_clients
FROM district
INNER JOIN client ON district.A1 = client.district_id
GROUP BY district.A2;

## 02 ## Are there districts with no clients?
      ## Hint: In case you have some doubts, you can check here how to use the update statement
SELECT district.A2 AS district_name, COUNT(client_id) AS num_clients
FROM district
INNER JOIN client ON district.A1 = client.district_id
GROUP BY district.A2
HAVING COUNT(client_id) = 0;

	 ## Move all clients from Strakonice to a new district with district_id = 100.
UPDATE client
SET district_id = 100
WHERE district_id = (
					SELECT district.A1 
                    FROM district
                    WHERE district.A2 = 'Strakonice');
                    
	 ## Check again
SELECT client.client_id, district.A2 AS district_name, client.district_id
FROM client
INNER JOIN district ON client.district_id = district.A1
WHERE district.A2 = 'Strakonice';
      
## 03 ## How would you spot clients with wrong or missing district_id?
SELECT *
FROM client
WHERE district_id NOT IN (
							SELECT A1 AS district_id 
                            FROM district);
SELECT *
FROM district
INNER JOIN client ON client.district_id = district.A1
WHERE district_id IS null;
## 04 ## Return clients to Strakonice.
UPDATE client
SET district_id = (
					SELECT district.A1 
                    FROM district
                    WHERE district.A2 = 'Strakonice'
                    LIMIT 1)
WHERE district_id = 100;

	 ## Check again
SELECT client.client_id, district.A2 AS district_name, client.district_id
FROM client
INNER JOIN district ON client.district_id = district.A1
WHERE district.A2 = 'Strakonice';


################ ACTIVITY 3 ################
## 01 ## Make a list of all the clients together with region and district, ordered by region and district.
SELECT district.A3 AS region_name, district.A2 AS district_name, client.client_id
FROM district
INNER JOIN client ON district.A1 = client.district_id
ORDER BY district.A3, district.A2;

## 02 ## Count how many clients do we have per region and district.
SELECT district.A3 AS region_name, district.A2 AS district_name, COUNT(client.client_id) AS num_clients
FROM district
INNER JOIN client ON district.A1 = client.district_id
GROUP BY district.A3, district.A2;

## 03 ## How many clients do we have per 10000 inhabitants?
SELECT district.A2 AS district_name, district.A3 AS region_name, COUNT(client.client_id) * 10000 / district.A4) AS more_than_10000_clients
FROM district
INNER JOIN client ON district.A1 = client.district_id
GROUP BY district.A2, district.A3
ORDER BY district.A3, district.A2;