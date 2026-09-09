CREATE DATABASE HEALTHCARE_ANALYTICS;
 USE DATABASE HEALTHCARE_ANALYTICS;

 CREATE SCHEMA HEALTHCARE_ANALYTICS.HEALTHCARE;

 USE SCHEMA HEALTHCARE_ANALYTICS.HEALTHCARE;
 
 CREATE OR REPLACE STAGE  HEALTHCARE_STAGE;
 
CREATE FILE FORMAT HEALTHCARE_CSV_FORMAT
TYPE = CSV
FIELD_DELIMITER = ','
SKIP_HEADER = 1;

USE DATABASE HEALTHCARE_ANALYTICS;
USE SCHEMA HEALTHCARE;

CREATE OR REPLACE TABLE PATIENTS (
    patient_id VARCHAR PRIMARY KEY,
    patient_age INTEGER,
    gender VARCHAR,
    patient_state VARCHAR,
    bpl_card_status BOOLEAN,
    insurance_type VARCHAR,
    comorbidity_count INTEGER,
    previous_admissions INTEGER
);

CREATE OR REPLACE TABLE HOSPITALS (
    hospital_id VARCHAR PRIMARY KEY,
    hospital_name VARCHAR,
    hospital_state VARCHAR,
    hospital_tier VARCHAR,
    bed_capacity INTEGER,
    is_teaching_hospital BOOLEAN
);

CREATE OR REPLACE TABLE ADMISSIONS (
    admission_id VARCHAR PRIMARY KEY,
    patient_id VARCHAR,
    admission_date DATE,
    discharge_date DATE,
    length_of_stay_days INTEGER,
    admission_type VARCHAR,
    ward_type VARCHAR,
    hospital_id VARCHAR,
    discharge_status VARCHAR,
    procedure_count INTEGER,
    charlson_comorbidity_index INTEGER,
    hba1c_level FLOAT,
    creatinine_level FLOAT,
    haemoglobin_level FLOAT,
    systolic_blood_pressure INTEGER,
    readmitted_within_30_days INTEGER,
    readmitted_within_7_days INTEGER,
    FOREIGN KEY (patient_id) REFERENCES PATIENTS(patient_id),
    FOREIGN KEY (hospital_id) REFERENCES HOSPITALS(hospital_id)
);


CREATE OR REPLACE TABLE BILLING (
    billing_id VARCHAR PRIMARY KEY,
    admission_id VARCHAR,
    total_cost_inr INTEGER,
    government_subsidy_inr INTEGER,
    patient_out_of_pocket_inr INTEGER,
    billing_category VARCHAR,
    FOREIGN KEY (admission_id) REFERENCES ADMISSIONS(admission_id)
);

CREATE OR REPLACE TABLE DIAGNOSES (
    diagnosis_id VARCHAR PRIMARY KEY,
    admission_id VARCHAR,
    icd10_code VARCHAR,
    diagnosis_description VARCHAR,
    diagnosis_rank INTEGER,
    diagnosis_category VARCHAR,
    FOREIGN KEY (admission_id) REFERENCES ADMISSIONS(admission_id)
);

COPY INTO PATIENTS FROM @HEALTHCARE_STAGE
FILES = ('patients_clean.csv')
FILE_FORMAT = (FORMAT_NAME = 'HEALTHCARE_CSV_FORMAT');


COPY INTO HOSPITALS
FROM @HEALTHCARE_STAGE
FILES = ('hospitals_clean.csv')
FILE_FORMAT = (FORMAT_NAME = 'HEALTHCARE_CSV_FORMAT');

COPY INTO ADMISSIONS
FROM @HEALTHCARE_STAGE
FILES = ('admissions_clean.csv')
FILE_FORMAT = (FORMAT_NAME = 'HEALTHCARE_CSV_FORMAT');

COPY INTO BILLING FROM  @HEALTHCARE_STAGE
FILES = ('billing_clean.csv')
FILE_FORMAT = (FORMAT_NAME = 'HEALTHCARE_CSV_FORMAT');


COPY INTO DIAGNOSES
FROM @HEALTHCARE_STAGE
FILES = ('diagnoses_clean.csv')
FILE_FORMAT = (FORMAT_NAME = 'HEALTHCARE_CSV_FORMAT');
