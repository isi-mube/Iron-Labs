# Case study - Guide to the Financial Data Set

**Note**: The data provided is real anonymized Czech bank transactions, account info, and loan records released for PKDD'99 Discovery Challenge.

### Scenario

You are working as an analyst for a bank. The bank offers services to private persons. The services include managing of accounts, offering loans, etc.

### Objective

The bank stores information about the clients including accounts held, transactions over the last few months, loans granted, cards issued etc. The bank managers hope to improve their understanding of customers and seek specific actions to improve services

### Tasks

Identify good clients to whom other services can be offered
Identify bad clients that have to watched carefully to minimize the losses

### E-R Diagram

![bank schema](https://education-team-2020.s3-eu-west-1.amazonaws.com/data-analytics/case_study_bank_schema.png)

Here are some details about the relations:

- Relation "client" describes characteristics of persons who can manipulate with the accounts. One client can have more accounts
- Relation "disposition" links related clients and accounts are together in more clients can manipulate with single account
- Relations "loan" and "credit card" describe some services which the bank offers to its clients; more credit cards can be issued to an account, at most one loan can be granted for an account.
- Relation "demographic data" gives some publicly available information about the districts (e.g. the unemployment rate); additional information about the clients can be deduced from this.

For more details about the relations and the attribute descriptions, please refer to the pdf document (`case_study_extended.pdf`).

**Other questions that can help improve business:**

- What percentage of accounts have more than one client accessing the account? Disposition table, type column.
- How much of the cards’ information is available in this database, and what are the different kinds of cards offered by the bank?
- Where are the most of the customers located (district)?
