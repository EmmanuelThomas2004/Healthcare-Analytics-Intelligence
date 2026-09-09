import pandas as pd
pd.set_option('display.max_columns', None)
billing = pd.read_csv(r"C:\Users\emman\Desktop\Healthcare project\billing.csv")
print(billing.shape)
print(billing.dtypes)
print(billing.describe())
print("Total Null Values:",billing.isnull().sum())
print("Total Duplicates:",billing.duplicated().sum())
print(billing.head(5))
print("cost mismatch:", (billing["total_cost_inr"] != billing["govt_subsidy_inr"] + billing["out_of_pocket_inr"]).sum())
bill_check = billing.groupby("bill_id").agg(admission_count=("admission_id", "nunique"))
duplicate_bill_admissions = bill_check[bill_check["admission_count"] > 1]
print(duplicate_bill_admissions)
print(billing.dtypes)
print(billing["cost_category"].value_counts(dropna=False))
billing.rename(columns={
    "bill_id": "billing_id",
    "total_cost_inr": "total_cost_inr",
    "govt_subsidy_inr": "government_subsidy_inr",
    "out_of_pocket_inr": "patient_out_of_pocket_inr",
    "cost_category": "billing_category"
}, inplace=True)
print(billing.dtypes)
