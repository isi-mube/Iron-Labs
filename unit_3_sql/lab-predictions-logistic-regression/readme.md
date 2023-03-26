# Movie Prediction 
1. [SQL](https://github.com/isi-mube/iron-labs/blob/main/unit_3_sql/lab-predictions-logistic-regression/notebook/sql_database_extraction_process.sql)
2. [Python](https://github.com/isi-mube/iron-labs/blob/main/unit_3_sql/lab-predictions-logistic-regression/notebook/imb_solution_lab_logistic_regression.ipynb)

## About the Project
The objective of this **project** is to identify the probability of a movie to being rented again based on a collection of over **one-year** historical data (from 2005/05/24 to 2006/02/14).

This reposatory is meant to improve [my previous knowledge](https://github.com/isi-mube/mbappe-project), this time with Logistic Regression.

## About the Dataset
Please refer to [SQL](https://github.com/isi-mube/iron-labs/blob/main/unit_3_sql/lab-predictions-logistic-regression/notebook/sql_database_extraction_process.sql) to read the full detail of the dataset extraction process.

## Update from previous project
* **Organization**: This time, we have one script for SQL another for Python, describing the process step by step.
* **EntropyBonus**: We fixed an error in GitHub where the code was showing horizonztally, it was due the HTML boxes.

## Results & Discussion
Our model has:

* 144 True Positives Vs 14 False Positives
* 132 True Negatives Vs 10 False Negatives
And an accuaracy of 92%... quite solid!

<p align="center">
  <img src="https://user-images.githubusercontent.com/90038586/227800891-0ec7accb-fa17-4aaa-a1e5-2ab805e6b105.png"/>
</p>

<p align="center">
  <img src="https://user-images.githubusercontent.com/90038586/227800913-4e1194fb-5cd7-4950-802e-c0205de89505.png"/>
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
