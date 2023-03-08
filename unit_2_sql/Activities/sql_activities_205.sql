############################################
############## ACTIVITIES 2.05 #############
############################################

USE bank;

################ ACTIVITY 1 ################
# 01 # QUESTION: Which other problems you may think non-normalized structure may have?
#    # ANSWER: Normalization reduces redudancy, duplicates an organizes Data. 
		# Also, it improves performance since we have to load less Data.
        # Slow query process and data anomalies.

################ ACTIVITY 2 ################
# 01 # QUESTION: Identify the primary and foreign keys from the ER diagram.
#    # ANSWER: store_id (primary) adress_id (foreign key) from STORE tables

################ ACTIVITY 3 ################
# 01 # QUESTION: Check if referential integrity is followed in the following tables?
#    # ANSWER: It is not.

# 02 # QUESTION: Use the insert command to create a new entry in the loan table with the following values (8000,8000000,930705,96396,12,8033.0,'C'). 
		  # Here each element corresponds to the values in columns in the table (in the order the columns appear in the table). 
          # This might raise an error. Why is that?
#    # ANSWER:
INSERT INTO loan
values(8000,8000000,930705,96396,12,8033.0,'C');

DELETE FROM loan
WHERE loan_id = 8000;

SELECT *
FROM loan
WHERE loan_id = 8000;


# 03 # QUESTION: Use the delete command to delete an entry from the table account where the account_id is 11382. 
          # Does this result in an error? If it does, then why?
#    # ANSWER:

################ ACTIVITY 4 ################
# 01 # QUESTION: Create the rest of the tables in the bank database (at least the client and the card tables).
#    # ANSWER: 

# 02 # QUESTION: Design and create a new database structure. Justify your changes.
          # Some ideas include renaming columns to ones that make more sense
		  # and, for eg., in the table district, adding foreign keys wherever necessary.
#    # ANSWER:  