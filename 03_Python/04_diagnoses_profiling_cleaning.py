import pandas as pd
pd.set_option('display.max_columns', None)
diagnoses = pd.read_csv(r"C:\Users\emman\Desktop\Healthcare project\diagnoses.csv")
print(diagnoses.dtypes)
print(diagnoses.isnull().sum())
print(diagnoses.duplicated().sum())
print(diagnoses.describe())
duplicatediagnossadmission = diagnoses.groupby("diag_id").agg(
    admissioncount=("admission_id","nunique"))
print("*" * 50)
print((duplicatediagnossadmission[duplicatediagnossadmission["admissioncount"] > 1].sum()))
print(diagnoses["diag_category"].value_counts(dropna=False))
print(diagnoses["diag_rank"].value_counts(dropna=False))
print(diagnoses["diag_desc"].value_counts(dropna=False))
print(diagnoses["icd10_code"].value_counts(dropna=False))
diagnoses.rename(columns={
    "diag_id": "diagnosis_id",
    "icd10_code": "icd10_code",
    "diag_desc": "diagnosis_description",
    "diag_rank": "diagnosis_rank",
    "diag_category": "diagnosis_category"
}, inplace=True)
print(diagnoses.dtypes)
