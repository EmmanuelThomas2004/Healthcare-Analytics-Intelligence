# Data Modeling

## Overview

The Power BI solution uses a structured dimensional data model designed to support patient, hospital, clinical, operational, and financial analysis.

## Data Model

The model contains the following tables:

### Dimension Tables

- `DIM_PATIENT` — Patient demographics, insurance, BPL status, age, and previous admissions
- `DIM_HOSPITAL` — Hospital name, state, tier, teaching status, and bed capacity
- `DIM_DATE` — Date, year, month, month number, and quarter
- `DIM_ADMISSION` — Unique admission-level reference table connecting patients, hospitals, dates, and downstream fact tables

### Fact Tables

- `FACT_ADMISSIONS` — Admission, clinical, ward, discharge, procedure, LOS, and readmission information
- `FACT_BILLING` — Healthcare costs, government subsidies, patient out-of-pocket costs, and billing categories
- `FACT_DIAGNOSES` — Diagnosis records, diagnosis descriptions, categories, and diagnosis ranks

## Relationships

The model uses one-to-many relationships from dimensions to admission-level data.

```text
DIM_PATIENT
     │
     ▼
DIM_ADMISSION ◄── DIM_HOSPITAL
     │
     ├── FACT_ADMISSIONS
     ├── FACT_BILLING
     └── FACT_DIAGNOSES

DIM_DATE
     │
     ▼
DIM_ADMISSION
