![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)

# Lab | LOD expressions and Dashboards

In this lab you will continue working with the same Tableau workbook from the last lab (lab for 6.2). As a quick reminder, you were using `abTesting.csv` as well as `case_study_ab_test.md` files. If you need to give one more look to the case study file, you can find it in the `files_for_lab/case_study_ab_test.md`.

### Instructions

- In this next plot, we want to analyze the customers from `group 1` (from the age groups we made from the column `clnt_age`). The objective is to find and filter out those participants where the account balance is less than the group average. Follow these steps:

  - Create a calculated field with LOD expression as `{ FIXED [clnt_age (group)] : AVG([Bal]) }`.
  - Create another calculated field to store the difference between the average balance for the group and balance for the individual as `{ FIXED [Client Age]: AVG([Bal]) } - { FIXED [Client Id]: AVG([Bal]) }`.
  - Add `Client_IDs` to the rows. Filter out all the clients other than `group_1`.
  - Add average balance for each client.
  - Arrange the data in an ascending order of balance.
  - Add the calculated field with the LOD expression.
  - Add the calculated field with the difference.
  - Add filter for the difference values to select only positive values (ie cases where the individual balance is less than the average balance for the group).

- You have plots from the previous lab. Use those plots to create an interactive dashboard for the users
