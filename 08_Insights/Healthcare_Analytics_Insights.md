# Healthcare Analytics Insights

## Executive Overview

The healthcare analytics solution analyzes 597,774 healthcare records across 86,400 patients, 120,000 admissions, 120,000 billing records, 271,341 diagnoses, and 33 hospitals.

The analysis focuses on patient demand, clinical outcomes, healthcare costs, hospital operations, resource utilization, and patient complexity.

## Patient Insights

- 86,400 patients are represented across the healthcare network.
- Patient volume is distributed across 15 states.
- Returning patients represent a significant portion of the patient population.
- Patients aged 36–65 form the largest age group with 46,860 patients.
- Patients aged 66+ show the highest readmission rate at approximately 20.4%.
- Younger patients have substantially lower readmission rates.
- Patient complexity increases significantly among older age groups.

## Admission Insights

- The dataset contains 120,000 admissions.
- Emergency admissions account for approximately 55% of total admissions.
- General Ward handles approximately 64% of admissions.
- ICU accounts for approximately 17% of admissions.
- Average Length of Stay is approximately 6.85 days.
- Average procedures per admission provide an additional indicator of treatment intensity.
- December recorded the highest monthly patient volume among the observed monthly counts.

## Clinical Insights

- The dataset contains 271,341 diagnosis records.
- Cardiovascular conditions represent the largest diagnosis category.
- Endocrine, respiratory, infectious, gastrointestinal, and neoplasm conditions are also major contributors to clinical workload.
- Older patients demonstrate higher Charlson Comorbidity Index values.
- Patients aged 66+ have the highest average Charlson Index at approximately 3.68.
- Higher clinical complexity is associated with longer stays and higher readmission risk.
- Neonatal and critical-care cases can generate longer patient stays due to the intensity of care required.

## Patient Outcome Insights

- Recovered patients represent the largest discharge outcome category.
- The 30-Day Readmission Rate is approximately 11.8%.
- Readmission risk increases substantially with age.
- The 66+ patient segment has a readmission rate of approximately 20.4%.
- The 0–17 segment has a readmission rate of approximately 6.2%.
- Monitoring readmission patterns can help identify high-risk patient segments and opportunities for improved continuity of care.

## Financial Insights

- Total healthcare expenditure exceeds ₹11.4 billion.
- Government subsidy contributes approximately ₹5.71 billion.
- Patient out-of-pocket expenditure contributes approximately ₹5.78 billion.
- Pharmacy, procedure, room, and laboratory services represent the major billing categories.
- Cost analysis by ward and diagnosis category helps identify areas of high healthcare expenditure.
- Financial monitoring can support cost optimization while maintaining quality of care.

## Hospital & Resource Insights

- The healthcare network contains 33 hospitals.
- Total bed capacity is 14,535.
- Average hospital bed capacity is approximately 440 beds.
- Hospital performance varies by patient volume, bed capacity, clinical complexity, and patient outcomes.
- Comparing patient volume against bed capacity helps identify differences in resource utilization.
- Hospital-level analysis supports capacity planning and operational decision-making.

## Key Business Insights

### 1. Emergency Care Drives Demand

Emergency admissions account for approximately 55% of total admissions, making emergency care the primary contributor to patient volume.

### 2. General Ward Has the Highest Utilization

General Ward represents approximately 64% of admissions and therefore has the greatest impact on overall inpatient capacity.

### 3. Older Patients Require Greater Clinical Attention

Patients aged 66+ have the highest readmission rate and highest average Charlson Comorbidity Index, indicating greater clinical complexity.

### 4. Readmission Is a Key Quality Indicator

The overall 30-Day Readmission Rate is approximately 11.8%, with substantially higher rates among older and more complex patients.

### 5. Healthcare Costs Require Continuous Monitoring

Healthcare expenditure exceeds ₹11.4 billion, with government subsidies and patient out-of-pocket payments contributing almost equally.

### 6. Resource Planning Is Critical

With 14,535 beds across 33 hospitals, comparing patient demand with available capacity can support better hospital resource allocation.

## Decision Support Opportunities

- Improve emergency department capacity planning.
- Monitor high-risk older patient segments.
- Develop targeted readmission reduction strategies.
- Optimize ward-level resource allocation.
- Monitor high-cost diagnosis and billing categories.
- Compare hospital patient volume with available bed capacity.
- Use clinical complexity indicators to support resource planning.
- Track patient outcomes and operational KPIs continuously.

## Conclusion

The analysis demonstrates how integrated healthcare data can be transformed into actionable business intelligence.

By combining patient, admission, diagnosis, billing, and hospital data with SQL, Snowflake, Power BI, DAX, Python, and data modeling, the solution provides a unified view of healthcare performance and supports data-driven clinical, operational, and financial decisions.
