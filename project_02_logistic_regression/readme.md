# MovieRent Predictor
1. [SQL script](https://github.com/isi-mube/iron-labs/blob/main/project_02_logistic_regression/notebook/sql_database_extraction_process.sql)
2. [Python script](https://github.com/isi-mube/iron-labs/blob/main/project_02_logistic_regression/notebook/imb_solution_lab_logistic_regression.ipynb)

## About the Project
The objective of this **project** is to determine the probability of a movie to being rented again based on a collection of over **one-year** historical data (from 2005/05/24 to 2006/02/14).

This reposatory is build upon [my previous knowledge in Linear Regression](https://github.com/isi-mube/mbappe-project), to do Logistic Regression model for predictive analysis.

## About the Dataset
For a complete description of the dataset extraction process, please refer to the [SQL script](https://github.com/isi-mube/movie-rent-predictor/blob/main/notebook/sql_database_extraction_process.sql).
Also, to read all documentation regarding `feture` selection and creating the `target` refer to the [Python script](https://github.com/isi-mube/movie-rent-predictor/blob/main/notebook/imb_solution_lab_logistic_regression.ipynb).


## Improvements from previous project
* **Organization**: We have two separate scripts for SQL and Python.
* **SQL**: Not my strongest point. For this project, it was important to decide whether RIGHT, LEFT or INNER JOIN to not loose data.
* **Entropy-Bonus**: We fixed a GitHub formatting issue that displayed code horizontally due to HTML boxes.

## Changes (28/03/23)
* **Structure**: Small changes to better structure.
* **Libraries**: We reduced the number.
* **Roc curve plot**" Updated. Ty, Nati!
* **LEFT JOIN**: Fixed. We use an INNER JOIN instead. It made no sense to extract films with 0 rentals.
* **Treshold**: Last time was defined by the mean. This time, we use the median since our target `movie_demand` has a different distribution.
* **Normalization**: This time we will normalize numericals with StandScaler.
* **Encoding**: We used get dummies this time instead of LabelEncoder
* **Results**: We got a better accuaracy (99% compared to our previous 92%) and confussion matrix results.

## Results & Discussion

![image](https://user-images.githubusercontent.com/90038586/228161380-666efe90-6a81-4641-a416-3f88e2918396.png)

Our model achieved:
* **141** True Negatives Vs **1** False Positive
* & **143** True Positives Vs **3** False Negatives
    
And an **accuaracy** of 99%!

![image](https://user-images.githubusercontent.com/90038586/228161454-7e7049ce-8372-460a-a582-307b1648c51f.png)

Roc curve

## Testing the Model

### Top 5 movie rentals
![image](https://user-images.githubusercontent.com/90038586/228161726-21dae39b-ecd3-43d9-8cfc-3c9077a797bc.png)
So, for example, **film_id** `103` is a movie with high demand, and we should keep more copies to our inventory. To find the name of the film, we simply do `SELECT * FROM film WHERE film_id = 103`  in SQL or Python, to get `BUCKET BROTHERHOOD`


## Tools
**Enviornment**
* VSCode and Jupyter Notebook

**Libraries**
* **Data manipulation:** pandas
* **Numerical operations:** numpy
* **Visualization:** matplotlib, seaborn
* **Settings:** warnings
* **SQL connection:** getpass, create_engine
* **Machine Learning:** scikit-learn
* **Preprocessing:** StandScaler
* **Model selection:** train test split
* **Logistic model:** LogisticRegression
* **Metrics evaluation:** accuracy_score, confusion_matrix, ConfusionMatrixDisplay
