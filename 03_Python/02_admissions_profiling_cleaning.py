import pandas as pd
pd.set_option('display.max_columns', None)
admissions = pd.read_csv(
    r"C:\Users\emman\Desktop\Healthcare project\admissions.csv")
print(admissions.head(5))
print(admissions.describe())
print("Nullcount:", admissions.isnull().sum())
admissions["admit_date"] = pd.to_datetime(admissions["admit_date"])
admissions["discharge_date"] = pd.to_datetime(admissions["discharge_date"])
print(admissions.dtypes)
print("Total Duplicates:",admissions.duplicated().sum())
print("Invalid Date Records:",(admissions["discharge_date"] < admissions["admit_date"]).sum())
date_los = (admissions["discharge_date"] - admissions["admit_date"]).dt.days
print(date_los)
print(admissions["admit_type"].value_counts(dropna=False))
print(admissions["ward_type"].value_counts(dropna=False))
print(admissions["discharge_type"].value_counts(dropna=False))
print(admissions["los_days"].value_counts().sort_index())
print(admissions["num_procedures"].value_counts().sort_index())
print(admissions["readmitted_30d"].value_counts(dropna=False))
print(admissions["readmitted_7d"].value_counts(dropna=False))
print(admissions["admission_id"].duplicated().sum())
print(admissions["patient_id"].duplicated().sum())
admissions.rename(columns={
    "admit_date":"admission_date",
 "los_days": "length_of_stay_days",
    "admit_type": "admission_type",
    "discharge_type": "discharge_status",
    "num_procedures": "procedure_count",
    "charlson_index": "charlson_comorbidity_index",
    "hba1c": "hba1c_level",
    "creatinine": "creatinine_level",
    "haemoglobin": "haemoglobin_level",
    "systolic_bp": "systolic_blood_pressure",
    "readmitted_30d": "readmitted_within_30_days",
    "readmitted_7d": "readmitted_within_7_days"},inplace=True)
print(admissions.dtypes)
