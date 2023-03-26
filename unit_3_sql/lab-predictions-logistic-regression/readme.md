# Movie Prediction 
1. [SQL script](https://github.com/isi-mube/iron-labs/blob/main/unit_3_sql/lab-predictions-logistic-regression/notebook/sql_database_extraction_process.sql)
2. [Python script](https://github.com/isi-mube/iron-labs/blob/main/unit_3_sql/lab-predictions-logistic-regression/notebook/imb_solution_lab_logistic_regression.ipynb)

## About the Project
The objective of this **project** is to determine the probability of a movie to being rented again based on a collection of over **one-year** historical data (from 2005/05/24 to 2006/02/14).

This reposatory is build upon [my previous knowledge](https://github.com/isi-mube/mbappe-project), employing Logistic Regression for predictive analysis.

## About the Dataset
For a complete description of the dataset extraction process, please refer to the [SQL script](https://github.com/isi-mube/iron-labs/blob/main/unit_3_sql/lab-predictions-logistic-regression/notebook/sql_database_extraction_process.sql).
Also, to read all documentation regarding `feture` selection and creating the `target` refer to the [Python script](https://github.com/isi-mube/iron-labs/blob/main/unit_3_sql/lab-predictions-logistic-regression/notebook/imb_solution_lab_logistic_regression.ipynb)


## Improvements from previous project
* **Organization**: We have two separate scripts for SQL and Python.
* **EntropyBonus**: We fixed a GitHub formatting issue that displayed code horizontally due to HTML boxes.

## Results & Discussion

<p align="center">
  <img src="https://user-images.githubusercontent.com/90038586/227800913-4e1194fb-5cd7-4950-802e-c0205de89505.png"/>
</p>

The model achieved the following results:

* 144 True Positives Vs 14 False Positives
* 132 True Negatives Vs 10 False Negatives

And an accuaracy of 92%... quite solid!

<p align="center">
  <img src="https://user-images.githubusercontent.com/90038586/227800891-0ec7accb-fa17-4aaa-a1e5-2ab805e6b105.png"/>
</p>


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
* **Preprocessing:** LabelEncoder
* **Model selection:** train test split
* **Logistic model:** LogisticRegression
* **Metrics evaluation:** accuracy_score, confusion_matrix, ConfusionMatrixDisplay, metrics
