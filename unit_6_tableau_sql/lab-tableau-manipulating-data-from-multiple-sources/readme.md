![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)

# Lab | Tableau - Manipulating data from multiple sources

For this lab, we will be using the dataset in the Customer Analysis Business Case. This dataset can be found in `files_for_lab` folder.

In this lab we are going to take a look at the pdf file, `files_for_lab/nz_water_water_resources.pdf`, but we will take a look at the other two tables, ie. `page 14 table 2` and `page 14 table 3`.

## Context


As discussed during the last lesson, these are another couple of ways in which Tableau reads the data from the table on page 14 in the PDF file.

  - `page 14 table 2` represents one half of the information
  - `page 14 table 3` represents the other half of the information



### Instructions

1. Create a union between the two tables.
2. Hide the column `Table Name`.
3. Clean the data.

**Hints**:

- You will see that the information from the PDF file's _column 1_ is split into two different columns when the data was imported using Tableau. Select the two columns and then use the option `merge mismatch fields` to combine those two columns.
- Rename the columns appropriately (rename the headers as years, as given in the PDF)
- Unlike the previous case, here we will keep all the sources except for the totals (ie. filter out the total and keep the rest)
- Select the data and create a pivot as shown below
  ![Create Pivot](https://education-team-2020.s3-eu-west-1.amazonaws.com/data-analytics/6.1-create_pivot_tableau.png)
- Rename the columns as `source`, `year`, and `million cubic meters`.
- As you would notice, there would still be some null values in the column `million cubic meters`. Remove those nulls.
- Convert the type of column years to the Date type.
- Convert the type of column `million cubic meters` to whole numbers.
- There would still be some issues with the names of the sources in the first column. Select column drop down and choose Aliases.

  - As you would see from the PDF file, `hydroelectricity` should be `abstraction for hydroelectricity`; and generation should be `discharge from hydroelectricity generation`.
  - Go ahead and change those aliases
    ![Editing_Aliases](https://education-team-2020.s3-eu-west-1.amazonaws.com/data-analytics/6.1-edit_aliases.png)
  - Change dimensions to measures wherever necessary.
  - Now go to the sheet, and create a plot and show the top 4 sources of generation. The final plot should look like this. Note here we have used a filter in the sheet to remove the column with discharge.

  ![Plot example](https://education-team-2020.s3-eu-west-1.amazonaws.com/data-analytics/6.1-lab_final_plot.png)
