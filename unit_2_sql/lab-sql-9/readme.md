![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)

# Lab | SQL Queries 9

In this lab, you will be using the [Sakila](https://dev.mysql.com/doc/sakila/en/) database of movie rentals. You have been using this database for a couple labs already, but if you need to get the data again, refer to the official [installation link](https://dev.mysql.com/doc/sakila/en/sakila-installation.html).

The database is structured as follows:
![DB schema](https://education-team-2020.s3-eu-west-1.amazonaws.com/data-analytics/database-sakila-schema.png)

### Instructions

In this lab we will find the customers who were active in consecutive months of May and June. Follow the steps to complete the analysis.

- Create a table `rentals_may` to store the data from rental table with information for the month of May.
- Insert values in the table `rentals_may` using the table rental, filtering values only for the month of May.
- Create a table `rentals_june` to store the data from rental table with information for the month of June.
- Insert values in the table `rentals_june` using the table rental, filtering values only for the month of June.
- Check the number of rentals for each customer for May.
- Check the number of rentals for each customer for June.
- Create a Python connection with SQL database and retrieve the results of the last two queries (also mentioned below) as dataframes:

  - Check the number of rentals for each customer for May
  - Check the number of rentals for each customer for June

    **Hint**: You can store the results from the two queries in two separate dataframes.

- Write a function that checks if customer borrowed more or less films in the month of June as compared to May.

  **Hint**: For this part, you can create a join between the two dataframes created before, using the merge function available for pandas dataframes. Here is a link to the documentation for the [merge function](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.merge.html).
