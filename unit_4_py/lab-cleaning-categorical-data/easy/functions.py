# 🔄 Functions

def open_data(data): # returns shape, data types & shows a small sample
    print(f"Data shape is {data.shape}.")
    print()
    print(data.dtypes)
    print()
    print("Data row sample and full columns:")
    return data.sample(5)

def explore_data(data):
    empty_spaces = data.eq(' ').sum()
    nan_values = data.isna().sum()
    null_values = data.isnull().sum()
    duplicate_rows = data.duplicated().sum()
    import pandas as pd
    exploration = pd.DataFrame({"EmptySpaces": empty_spaces, "NaN": nan_values, "Null" : null_values})
    print(f"There are {duplicate_rows} duplicate rows. Also;")
    return exploration

def snake_columns(data): # snake_case columns
    data.columns = [column.lower().replace(' ', '_') for column in data.columns]
    return data.sample(0)