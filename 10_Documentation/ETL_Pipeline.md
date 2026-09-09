# ETL Pipeline

## Overview

The healthcare analytics solution follows an end-to-end ETL pipeline that transforms raw healthcare data into validated analytical datasets and business intelligence dashboards.

## 1. Data Sources

The project uses five core healthcare datasets:

- Patients
- Admissions
- Billing
- Diagnoses
- Hospitals

The datasets contain a combined **597,774 records**.

## 2. Data Preparation

Initial data preparation was performed using **Excel and Python/Pandas**.

Key activities included:

- Reviewing dataset structure
- Inspecting data types
- Identifying missing values
- Checking duplicate records
- Converting date fields
- Standardizing column names
- Validating business rules
- Preparing cleaned datasets

## 3. Data Cleaning

Python and Pandas were used to perform dataset-specific cleaning and validation.

Examples include:

- Replacing missing insurance values with `Unknown`
- Standardizing date fields
- Renaming columns for analytical readability
- Validating length of stay against admission and discharge dates
- Validating billing cost components
- Checking diagnosis ranks
- Validating hospital and patient identifiers

## 4. Data Validation

Quality checks were performed before downstream analysis.

Validation included:

- Null-value checks
- Duplicate checks
- Unique identifier checks
- Referential integrity checks
- Cost consistency checks
- Date validation
- Business-rule validation

## 5. Database Layer

The cleaned datasets were loaded into:

- MySQL
- Snowflake

SQL was then used for analytical queries and validation.

## 6. Power BI Transformation

The cleaned data was imported into Power BI and prepared using Power Query.

The analytical model separates dimension and fact tables to support efficient reporting and filtering.

## 7. Data Modeling

The Power BI model includes:

- Patient dimension
- Hospital dimension
- Date dimension
- Admission dimension
- Admissions fact
- Billing fact
- Diagnoses fact

Relationships were designed to support patient, hospital, date, clinical, operational, and financial analysis.

## 8. Analytics & Visualization

DAX measures were created for key performance indicators including:

- Total Patients
- Total Admissions
- Total Healthcare Cost
- 30-Day Readmission Rate
- Average Length of Stay
- Government Subsidy
- Patient Out-of-Pocket Cost
- ICU Admission Share
- Average Procedures per Admission

The final Power BI solution contains five interactive dashboards covering executive, patient, operational, clinical, and hospital performance analysis.

## End-to-End Flow

Raw Healthcare Data  
↓  
Excel & Python/Pandas  
↓  
Data Cleaning & Validation  
↓  
MySQL & Snowflake  
↓  
SQL Analytics  
↓  
Power BI / Power Query  
↓  
Data Modeling  
↓  
DAX & KPI Engine  
↓  
Interactive Dashboards  
↓  
Business Insights
