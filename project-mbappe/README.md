# MBAPPÉ Project
[Hugo](https://github.com/isi-mube/iron-labs/blob/main/project-mbappe/project-mbapp%C3%A9.ipynb)

## About the Project
The objective of this **project** is to identify young soccer players who posses the potential to become **the next Kylian Mbappé**. The [original](https://github.com/isi-mube/data_mid_bootcamp_project_FIFA_MoneyBall) project was completed in 5 days in collaboration with my fellow Ironhack classmates, [Nati](https://github.com/natnaelfe) & [Hugo](https://github.com/HugoIronhack).

This repository is designed to improve my knowledge, redifining the Linear Regression Model, data cleaning processes and functions.

## About the Dataset
After reading the [documentation](https://www.kaggle.com/datasets/ekrembayar/fifa-21-complete-player-dataset?select=fifa21_male2.csv) we decided to proceed with the following **strategy**:

1. The majority of the data types are **numericals**, so we will work with that to make a Linear Regression model.
2. The **target** for our dataset it will be the `OVA` (overall score) of a player.
3. Through **Exploratory Data Analysis** we will identify the features that contribute to this prediction.

## Updates
* **Libraries:** This time, we use `os` to be proficent with other ways of opening the data. Also, they were re-organized for readibility.
* **Functions:** The following functions were added `data_info`, `clean_columns`, `check_null_cols`, `check_nan_cols` & `is_significant` to improve our workflow.
* All the work has been documented, explaining everystep and avoiding redudancy
* The project's **size** has been reduced, making it more readble and efficent. From 1.45 MB (7.265 lines) to 904 KB (8.184 lines)
* **Cleaning the Data:** step had been improved and simplified. We added some extra code for visualization of the changes.
* **Plots:** Still not my strongest point. Normalization plots had been improved, also the Linear Regression results.
* **Rounding after normalization** in this case, we did not round our numericals.


## Results and Discussion
R2 =  1.0
RMSE =  1.1837269792931977e-13
The value of the metric MSE is  1.4012095615065982e-26
MAE =  7.482272230109035e-14

After all the modifications, we probably overfitted the model. Also, we forgot to drop `bov` or `ova`, two features that are highly correlated.

## Furhter improvments
* Add new datasets to have historical data and make a better prediction.
* Checking again multicollinearity.
* Add references to the README file.

