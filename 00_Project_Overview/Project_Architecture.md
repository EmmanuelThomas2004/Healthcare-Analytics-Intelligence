## Project Architecture

```text
┌──────────────────────────────────────────────┐
│              RAW HEALTHCARE DATA             │
│ Patients • Admissions • Billing • Diagnoses │
│                  • Hospitals                 │
└──────────────────────┬───────────────────────┘
                       │
                       ▼
┌──────────────────────────────────────────────┐
│           DATA PREPARATION & ETL             │
│              Excel • Python • Pandas         │
└──────────────────────┬───────────────────────┘
                       │
                       ▼
┌──────────────────────────────────────────────┐
│        DATA PROFILING & QUALITY CHECKS       │
│ Missing Values • Duplicates • Data Types     │
│ Referential Integrity • Business Rules       │
└──────────────────────┬───────────────────────┘
                       │
                       ▼
┌──────────────────────────────────────────────┐
│           CLEANING & VALIDATION              │
│ Standardization • Transformation • Validation│
│            Clean Healthcare Datasets         │
└──────────────────────┬───────────────────────┘
                       │
                       ▼
              ┌────────┴────────┐
              │                 │
              ▼                 ▼
     ┌────────────────┐  ┌────────────────────┐
     │     MySQL      │  │     Snowflake      │
     │ Relational DB  │  │ Cloud Data Warehouse│
     └───────┬────────┘  └──────────┬─────────┘
             │                     │
             └──────────┬──────────┘
                        │
                        ▼
┌──────────────────────────────────────────────┐
│               SQL ANALYTICS                  │
│ Business Queries • Validation • KPI Analysis │
└──────────────────────┬───────────────────────┘
                       │
                       ▼
┌──────────────────────────────────────────────┐
│             POWER QUERY LAYER                │
│ Transformation • Shaping • Preparation       │
└──────────────────────┬───────────────────────┘
                       │
                       ▼
┌──────────────────────────────────────────────┐
│            POWER BI DATA MODEL               │
│ Dimensions • Facts • Relationships • Date    │
│                  Intelligence                │
└──────────────────────┬───────────────────────┘
                       │
                       ▼
┌──────────────────────────────────────────────┐
│              DAX & KPI ENGINE                │
│ Measures • Calculations • Ratios • Trends    │
│             Dynamic Performance Metrics      │
└──────────────────────┬───────────────────────┘
                       │
                       ▼
┌──────────────────────────────────────────────┐
│          UI/UX & DASHBOARD DESIGN            │
│ Visual Hierarchy • KPI Design • Layout       │
│ Interaction • Navigation • Storytelling      │
└──────────────────────┬───────────────────────┘
                       │
                       ▼
┌──────────────────────────────────────────────┐
│        INTERACTIVE POWER BI DASHBOARDS       │
│ Executive • Patient • Clinical • Financial   │
│              • Hospital Intelligence         │
└──────────────────────┬───────────────────────┘
                       │
                       ▼
┌──────────────────────────────────────────────┐
│              BUSINESS INSIGHTS               │
│ Patient • Clinical • Operational • Financial │
│             Performance Intelligence         │
└──────────────────────┬───────────────────────┘
                       │
                       ▼
┌──────────────────────────────────────────────┐
│          DATA-DRIVEN DECISION SUPPORT        │
│ Strategic • Operational • Clinical Decisions │
└──────────────────────────────────────────────┘
