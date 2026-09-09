import pandas as pd
pd.set_option('display.max_columns', None)
hospitals = pd.read_csv(r"C:\Users\emman\Desktop\Healthcare project\hospitals.csv")
print(hospitals.dtypes)
print(hospitals.shape)
print(hospitals.describe())
print(hospitals.isnull().sum())
print(hospitals.duplicated().sum())
print(hospitals["state"].value_counts(dropna=False))
print(hospitals["tier"].value_counts(dropna=False))
print(hospitals["name"].value_counts(dropna=False))
hospitalval = hospitals.groupby("name").agg(
    idcheck=("hospital_id","nunique"))
print(hospitalval[hospitalval["idcheck"] > 1])
show_duplicates = hospitals[hospitals["name"].duplicated(keep=False)]
print("*"*100)
print(show_duplicates)
hospitals.rename(columns={
    "hospital_id": "hospital_id",
    "name": "hospital_name",
    "state": "hospital_state",
    "tier": "hospital_tier",
    "beds": "bed_capacity",
    "teaching": "is_teaching_hospital"
}, inplace=True)
print(hospitals.dtypes)
