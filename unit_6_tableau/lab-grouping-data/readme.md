![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)

# Lab | Grouping Data

In this lab we will be working with `files_for_lab/abTesting.csv` file. Please refer to the `case_study_ab_test.md` file to understand more about the data collected. The file also has description of the different data fields given in the csv file.

Please make sure you save this notebook. We will use the results from this lab in the next lab (for LOD expressions). We will use this lab to prepare ourselves for the task in the next lab. 

### Instructions

Import the csv into Tableau and answer the following questions:

1. What is the distribution of number of participants at each stage for control variation and test variation? Please make sure that the process steps are in order. The final plot would look like this: (It does not matter if you use the Y axis for process steps)
    <details>
      <summary> Click to see the image </summary>

      <br />

      ![Participants at each stage](https://education-team-2020.s3-eu-west-1.amazonaws.com/data-analytics/6.2_lab/participants_at_each_stage_control_vs_test.png)

    </details>
   
2. Now, we want to compare the total number of participants for each variation. Pay attention: can you take the sum of all the process steps or not?
3. Duplicate the previous plot onto a new sheet. Now we want to find the total number of participants by gender, ie. what is the number of males and females in each variation. You can filter out the other gender categories present in the data. (Select only males and females in your data) The final plot would look like this:

    <details>
      <summary> Click to see the image </summary>

      <br />

      ![Total participants by gender](https://education-team-2020.s3-eu-west-1.amazonaws.com/data-analytics/6.2_lab/total_number_of_participants_by_gender.png)

    </details>
    
4. Duplicate the previous sheet. Now the objective is to represent the number of participants by gender as percentage of totals. Use the appropriate quick table calculation for this. Round the percentages to one decimal point. The final plot would look like this:

    <details>
      <summary> Click to see the image </summary>

      <br />
     
      ![Percentage total participants by gender](https://education-team-2020.s3-eu-west-1.amazonaws.com/data-analytics/6.2_lab/percentage_total_participants_by_gender.png)

    </details>
    
5. We have already seen how to group the data by making a new calculated field (using `IF...ELSE` conditional statement). Now we will create groups using the `create group` option in the Tableau. We will create different age groups and analyze the average balance for each group. Follow the steps:

    - Click the down arrow on `clnt_age` in the dimensions pane on the left hand side. Go to create and select `groups`:

    <details>
      <summary> Click to see the image for step 1 </summary>

      <br />

      ![Create Groups](https://education-team-2020.s3-eu-west-1.amazonaws.com/data-analytics/6.2_lab/create_groups.png)

    </details>


    - Create the following groups: Age 17 to 30 , 31 to 40, 40 to 55, 55 to 70, and 70 and above
    - Edit group names:

    <details>
      <summary> Click to see the images </summary>

      <br />

      - Image 1:

      ![Create Groups](https://education-team-2020.s3-eu-west-1.amazonaws.com/data-analytics/6.2_lab/edit_group1.png)

      <br />
      
      - Image 2:

      ![Create Groups](https://education-team-2020.s3-eu-west-1.amazonaws.com/data-analytics/6.2_lab/edit_group2.png)

    </details>

    - Plot average balance for each group. Do you observe any trend?

