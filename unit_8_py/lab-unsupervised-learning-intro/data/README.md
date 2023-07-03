# spotify-data-sorted
This is an analysis of [the data on Spotify tracks from 1921-2020](https://www.kaggle.com/yamaerenay/spotify-dataset-19212020-160k-tracks?select=data.csv) with Jupyter Notebook and Python Data Science tools.

## About the Dataset
The **Spotify dataset** (titled data.csv) consists of **160,000+** tracks **sorted by name**, from 1921-2020 found in Spotify as of June 2020. Collected by Kaggle user and Turkish Data Scientist Yamaç Eren Ay, the data was retrieved and tabulated from the **Spotify Web API**. Each row in the dataset corresponds to a track, with variables such as the title, artist, and year located in their respective columns. Aside from the fundamental variables, musical elements of each track, such as the tempo, danceability, and key, were likewise extracted; the algorithm for these values were generated by Spotify based on a range of technical parameters.

## Exploratory Data Analysis (EDA)
1. Studying the correlations between the variables in the Spotify data.
2. The evolution of different musical elements through the years.
3. The divide between explicit and non-explicit songs through the years.

## Further Investigation and Inference (FII)
1. Determining if there is a significant difference in popularity between explicit and non-explicit songs.
2. Finding the most frequent emotions in Spotify tracks and analyzing their musical elements based on the track's mode and key.
3. Determining the classifications of the Spotify tracks through K-Means Clustering.

## Project Directory Guide
1. `Spotify Data.ipynb` is the main notebook where the data is imported for EDA and FII.
2. `data.csv` is the dataset downloaded from Kaggle.
3. `spotify_eda.html` is the HTML file for the comprehensive EDA done using the **Pandas Profiling** module.

## Project Notes
1. This is in partial fulfillment of the course **Statistical Modelling and Simulation (CSMODEL)**.

Credits to [gabminamedez](https://github.com/gabminamedez/spotify-data) for the original dataset.