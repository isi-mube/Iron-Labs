# Keepers:

# 📚 Basic libraries
import pandas as pd # data manipulation
from ydata_profiling import ProfileReport # improved EDA
import numpy as np # numerical operations
import matplotlib.pyplot as plt # 2D visualizations
import seaborn as sns # high-resolution visualization
import warnings # warning messages management

# 🌐 SQL connection
from getpass import getpass # SQL connector
from sqlalchemy import create_engine # route to the engine

# 🤖 Machine Learning
from scipy.stats import skew # data distribution assymmetry
from sklearn.preprocessing import StandardScaler # data normalization
from sklearn.model_selection import train_test_split # train/test sets
from sklearn.linear_model import LogisticRegression # logistic model
from sklearn.metrics import roc_curve, confusion_matrix, ConfusionMatrixDisplay # roc curve, confussion matrix & displayer
from sklearn.metrics import classification_report # Metrics to check & compare our score

# ⚙️ Settings
pd.set_option('display.max_columns', None) # display all columns
warnings.filterwarnings('ignore') # ignore warnings