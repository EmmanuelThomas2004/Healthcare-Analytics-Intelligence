SELECT COUNT(H.hospital_id) FROM ADMISSIONS A LEFT JOIN hospitals H ON H. hospital_id  = A. hospital_id WHERE H.hospital_id IS NULL;

SELECT COUNT(A.admission_id) FROM BILLING B LEFT JOIN ADMISSIONS A ON A.admission_id = B.admission_id WHERE A.admission_id IS NULL;

SELECT COUNT(B.admission_id) FROM DIAGNOSES D LEFT JOIN BILLING B ON B.admission_id = D.admission_id WHERE B.admission_id IS NULL;

SELECT COUNT(A.admission_id) FROM DIAGNOSES D LEFT JOIN ADMISSIONS A ON A.admission_id = D.admission_id WHERE A.admission_id IS NULL;

SELECT COUNT(A.patient_id) FROM  Patients P LEFT JOIN Admissions A ON A.patient_id = P.patient_id WHERE A.patient_id IS NULL;

SELECT COUNT(P.patient_id) FROM Admissions A LEFT JOIN Patients P ON P.patient_id = A.patient_id WHERE P.patient_id IS NULL;

SELECT COUNT(DISTINCT patient_id) FROM  Patients;

SELECT COUNT(patient_id),patient_id  FROM  Patients GROUP BY  patient_id  HAVING COUNT(patient_id) > 1;

SELECT COUNT(admission_id),admission_id  FROM ADMISSIONS GROUP BY admission_id HAVING COUNT(admission_id) > 1;

SELECT COUNT(billing_id),billing_id FROM BILLING GROUP BY billing_id HAVING COUNT(billing_id) > 1;

SELECT diagnosis_id,COUNT(diagnosis_id) FROM DIAGNOSES GROUP BY diagnosis_id HAVING COUNT(diagnosis_id) > 1;

SELECT hospital_id,COUNT(hospital_id) FROM HOSPITALS GROUP BY hospital_id HAVING COUNT(hospital_id) > 1;

SELECT admission_id,COUNT(billing_id) FROM BILLING GROUP BY admission_id HAVING COUNT(billing_id) > 1;

SELECT COUNT(B.admission_id) FROM Admissions A LEFT JOIN  Billing B ON B.admission_id = A.admission_id WHERE B.admission_id IS NULL;

SELECT COUNT(A.admission_id) FROM Diagnoses D LEFT JOIN Admissions A ON A.admission_id = D.admission_id WHERE A.admission_id IS NULL;
