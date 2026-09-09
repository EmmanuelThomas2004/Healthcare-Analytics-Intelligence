import pandas as pd
pd.set_option('display.max_columns', None)
patients = pd.read_csv(
    r"C:\Users\emman\Desktop\Healthcare project\patients.csv")
print(patients.head())

print("Total Rows And Columns:", patients.shape)
print(patients.dtypes)
print("Total Null Values:", patients.isnull().sum())
print(patients.describe())
insurance_type_NullVolume  = patients['insurance_type'].isnull().mean()*100
print("Insurance Null Count in %", insurance_type_NullVolume)
nullcheck = patients[patients['insurance_type'].isna()]
print(nullcheck)
checkingtimeapear = patients["insurance_type"].value_counts(dropna=False)
print(checkingtimeapear)
print("agezerocount=:",(patients["age"] == 0).sum())
print(patients[patients["age"] == 0].head(20))
print(patients["age"].value_counts(dropna=False).sort_index().head(15))
print(patients["gender"].value_counts(dropna=False).sort_index())
print(patients["state"].value_counts(dropna=False).sort_index())
print(patients["bpl_card"].value_counts(dropna=False).sort_index())
print(patients["insurance_type"].value_counts(dropna=False).sort_index())
print(patients["comorbidity_count"].value_counts(dropna=False).sort_index())
print(patients["prev_admissions"].value_counts(dropna=False).sort_index())
patients["insurance_type"] = patients["insurance_type"].fillna("Unknown")
print(patients.isnull().sum())
patients.rename(columns={
    "patient_id": "patient_id",
    "age": "patient_age",
    "gender": "gender",
    "state": "patient_state",
    "bpl_card": "bpl_card_status",
    "insurance_type": "insurance_type",
    "comorbidity_count": "comorbidity_count",
    "prev_admissions": "previous_admissions"
}, inplace=True)
print(patients.dtypes)
