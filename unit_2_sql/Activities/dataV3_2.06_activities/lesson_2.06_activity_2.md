# 2.06 Activity 2

#### Queries and questions

1. Can you use the following query:

```sql
select * from bank.district
where a3 like 'north%M%';
```

instead of:

```sql
select * from bank.district
where a3 like 'north_M%';
```

Try both the queries and check the results.

2. We looked at the following query in class:

```sql
select * from bank.district
where a2 regexp 'ch[e-r]';
```

Can you modify the query to print the rows only for those values in the **A2** column that starts with **'CH'**?

3. Use the table `trans` for this query. Use the column `type` to test: "By default, in an ascending sort, special characters appear first, followed by numbers, and then letters."

4. Again use the table `trans` for this query. Use the column `k_symbol` to test: "Null values appear first if the order is ascending."

5. Pick any table and any column to test: "You can use any column from the table to sort the values even if that column is not used in the select statement." Check the difference by writing the query with and without that column (column used to sort the results) in the select statement.
