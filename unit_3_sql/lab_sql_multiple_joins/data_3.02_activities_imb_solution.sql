############################################
################# UNIT | 3 ################# 
############################################
############## ACTIVITIES 3.02 #############
############################################

USE bank;

################ ACTIVITY 1 ################
## 01 ## Use the below query and list district_name, client_id and account_id
	  ## for those clients who are owner of the account. 
      ## Order the results by district_name::

SELECT *
FROM bank.disp AS D
JOIN bank.client C
ON D.client_id = C.client_id
JOIN bank.district AS DA
ON DA.A1 = C.district_id
WHERE d.type = 'OWNER'
ORDER BY DA.A1;

################ ACTIVITY 2 ################
## 02 ## List districts together with total amount borrowed and average loan amount.
SELECT	D.A2, SUM(l.amount) AS total_amount, SUM(l.amount) / COUNT(*) AS avg_loan
FROM loan AS L
LEFT JOIN account A
ON L.account_id = A.account_id
LEFT JOIN district AS D
ON A.district_id = D.A1
GROUP BY A2;

################ ACTIVITY 3 ################
## 01 ## Create a temporary table district_overview in the bank database
	  ## which lists districts together with total amount borrowed and average loan amount.
CREATE TEMPORARY TABLE bank.district_overview
SELECT D.A2, SUM(L.amount) AS total_amount, SUM(L.amount) / COUNT(*) AS avg_loan
FROM loan AS L
LEFT JOIN account AS A
USING account_id
LEFT JOIN district AS D
ON A.district_id = D.A1
GROUP BY A2;

SELECT *
FROM bank.district_overview;

################ ACTIVITY 4 ################
## 01 ## Still working in the bank database, list the clients with no credit card.
SELECT client_id, count(card_id) num_cards
FROM client 
INNER JOIN disp USING (client_id)
LEFT JOIN card USING (disp_id)
GROUP BY client_id
HAVING num_cards = 0;