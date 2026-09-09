SELECT COUNT(DISTINCT patient_id)AS Total_Patients FROM PATIENTS;

SELECT COUNT(*)AS Total_Admissions FROM ADMISSIONS;

SELECT YEAR(admission_date) AS admission_year,MONTH(admission_date) AS admission_month,COUNT(*) AS total_admissions
FROM Admissions GROUP BY YEAR(admission_date), MONTH(admission_date) ORDER BY admission_year, admission_month;

SELECT COUNT(*) AS Total_Admission,ward_type FROM  Admissions GROUP BY  ward_type;|

SELECT AVG(length_of_stay_days) AS average_length_of_stay_days,ward_type FROM  Admissions GROUP BY  ward_type;

SELECT COUNT(*) AS Total_Admission,admission_type FROM  Admissions GROUP BY admission_type;

SELECT COUNT(*) AS Total_Admission,discharge_status FROM  Admissions GROUP BY discharge_status;

SELECT COUNT(*) AS Total_Patients,gender FROM  Patients GROUP BY gender;

SELECT (CASE WHEN patient_age BETWEEN 0 AND 17 THEN '0-17'
WHEN patient_age BETWEEN 18 AND 35 THEN '18-35'
WHEN patient_age BETWEEN 36 AND 65 THEN '36-65'
ELSE '66+' END) AS age_group,
COUNT(*) AS Total_Patients FROM PATIENTS GROUP BY age_group
ORDER BY CASE WHEN age_group =  '0-17' THEN 1 
WHEN age_group = '18-35' THEN 2
WHEN age_group = '36-65' THEN 3
ELSE '4' END;


SELECT
SUM(total_cost_inr) AS total_healthcare_cost,
SUM(government_subsidy_inr) AS total_government_subsidy,
SUM(patient_out_of_pocket_inr) AS total_patient_out_of_pocket
FROM BILLING;

SELECT diagnosis_category,COUNT(*) AS Total_diagnoses FROM  DIAGNOSES GROUP BY diagnosis_category ORDER BY  Total_diagnoses DESC;


SELECT ROUND(SUM(readmitted_within_30_days) * 100.0 / COUNT(*), 2) AS readmission_rate_30_days
FROM ADMISSIONS

SELECT hospital_id,COUNT(*) AS total_admissions FROM ADMISSIONS
GROUP BY hospital_id ORDER BY total_admissions DESC;

SELECT
    h.hospital_name,
    h.hospital_state,
    h.hospital_tier,
    COUNT(a.admission_id) AS total_admissions
FROM ADMISSIONS a
JOIN HOSPITALS h
    ON a.hospital_id = h.hospital_id
GROUP BY
    h.hospital_name,
    h.hospital_state,
    h.hospital_tier
ORDER BY total_admissions DESC;
