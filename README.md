![MySQL](https://img.shields.io/badge/MySQL-8.0+-**4479A1**?style=for-the-badge&logo=mysql&logoColor=white) ![Python](https://img.shields.io/badge/Python-3.9+-**3776AB**?style=for-the-badge&logo=python&logoColor=white) ![Pandas](https://img.shields.io/badge/Pandas-Data%20Cleaning-**150458**?style=for-the-badge&logo=pandas&logoColor=white) ![Matplotlib](https://img.shields.io/badge/Matplotlib-Visualization-**11557C**?style=for-the-badge&logo=python&logoColor=white) ![Seaborn](https://img.shields.io/badge/Seaborn-Statistical%20Viz-4c72b0?style=for-the-badge&logo=python&logoColor=white) ![**EDA**](https://img.shields.io/badge/**EDA**-Exploratory%20Data%20Analysis-orange?style=for-the-badge&logo=googleanalytics&logoColor=white) ![Status](https://img.shields.io/badge/Project%20Status-Completed-brightgreen?style=for-the-badge)

# Diabetes 30-Day Hospital Readmission Analysis

Project Overview

The Diabetes 30-Day Hospital Readmission Analysis is an end-to-end healthcare data analytics project developed using Python and **SQL**.
The project analyzes **101**,**766** hospital encounters to understand patterns associated with 30-day hospital readmissions among diabetic patients.
The project follows a complete analytics workflow:
Data Cleaning → Exploratory Data Analysis → **SQL** Analysis → Data Visualization → Business Insights
Python was used for data cleaning, **EDA**, analysis, and visualization, while MySQL was used for structured **SQL**-based business analysis.

---

Business Problem

Hospital readmissions are an important healthcare analytics problem because repeated hospital utilization can increase healthcare resource requirements and may indicate patient groups that require additional attention.

This project analyzes healthcare encounter data to understand which patient characteristics, previous healthcare utilization patterns, hospital stay characteristics, and clinical complexity indicators are associated with higher observed 30-day readmission rates.

The project focuses on questions such as:

- What is the overall 30-day readmission rate?

- Does previous inpatient utilization relate to readmission?

- Does previous emergency utilization show a similar pattern?

- What happens when inpatient and emergency history are analyzed together?

- How does hospital length of stay relate to readmission?

- Does encounter volume change as length of stay increases?

- Do medication and diagnosis complexity show meaningful patterns?

- Do **A1C** and glucose-related variables show differences in readmission rates?

- What relationships exist between the major numerical healthcare variables?

Note: This project identifies patterns and associations in the data. It does not establish causal relationships.

---

Project Objectives

The main objectives of this project are:

- Perform data cleaning and data validation.
- Conduct Exploratory Data Analysis (**EDA**).
- Understand the structure and quality of the dataset.
- Analyze demographic characteristics.
- Analyze previous inpatient utilization.
- Analyze previous emergency utilization.
- Analyze previous outpatient utilization.
- Analyze hospital length of stay.
- Analyze medication complexity.
- Analyze diagnosis complexity.
- Analyze diabetes-related variables.
- Calculate encounter counts and readmission rates.
- Perform **SQL**-based business analysis.
- Create meaningful Python visualizations.
- Perform correlation analysis.
- Identify important healthcare-utilization segments.
- Generate business insights.

---

Tools & Technologies

- Python
- Pandas
- Matplotlib
- Seaborn
- MySQL
- Jupyter Notebook

---

Dataset Overview

The dataset contains hospital encounter information for diabetic patients.
The analysis is primarily performed at the hospital encounter level, meaning that one patient can have multiple hospital encounters.
### Dataset Statistics


| Total Hospital Encounters | 101,766 |

| Unique Patients | 71,518 |

| 30-Day Readmissions | 11,357 |

| Overall 30-Day Readmission Rate | 11.16% |

---

Project Workflow

text

Raw Healthcare Data

↓

Data Loading

↓

Data Quality Checking

↓

Data Cleaning

↓

Missing Value Handling

↓

Feature Preparation

↓

30-Day Readmission Target Creation

↓

Exploratory Data Analysis

↓

Python Visualization

↓

SQL Business Analysis

↓

Correlation Analysis

↓

Business Insights

---

### Data Cleaning & Preparation

Python and Pandas were used to prepare the raw healthcare dataset for analysis.

### Data Cleaning Steps

Loaded the raw dataset using Pandas.
Examined dataset dimensions.
Inspected columns and data types.
Checked missing values.
Checked duplicate records.
Checked duplicate encounter IDs.
Examined categorical variables.
Identified ? values representing missing information.
Converted ? values into missing values.
Handled missing and not-recorded categories.
Prepared analytical groups.
Prepared variables required for analysis.
Prepared the final dataset for **EDA** and visualization.

# Data Quality Checks

Full duplicate rows: 0
Duplicate encounter IDs: 0

30-Day Readmission Target
The original readmission variable contained three categories:

- NO
- >30
- <30

For this project, the main focus is on readmissions occurring within 30 days.

A binary analytical variable was created:

- <30 → 1
- NO → 0
- >30 → 0

The resulting analytical variable is:
readmission30d
Where:

1 = Readmitted within 30 days

0 = Not readmitted within 30 days

The primary KPI used throughout the project is the 30-Day Readmission Rate.

30-Day Readmission Rate =  30-Day Readmissions / Total Encounters × **100**

### Overall Result
-11.16%

This overall rate is used as the baseline for comparing different patient and encounter groups.

---

Exploratory Data Analysis (**EDA**)

Exploratory Data Analysis was performed to understand the dataset and identify important patterns before performing deeper analysis.

---

# Demographic Analysis

The following demographic variables were examined:

- Age
- Gender
- Race

The purpose was to understand whether different demographic groups showed differences in observed 30-day readmission rates.

# Healthcare Utilization Analysis

The following healthcare utilization variables were analyzed:

- Previous inpatient visits
- Previous emergency visits
- Previous outpatient visits
- Time in hospital

These variables were used to understand how previous healthcare utilization and hospital stay characteristics relate to observed readmission patterns.

# Clinical Complexity Analysis

The following variables were analyzed:

- Number of medications
- Number of diagnoses
- Number of laboratory procedures
- Number of procedures

These variables were used to examine differences in readmission patterns across different levels of healthcare and clinical complexity.

🩺 Diabetes-Related Analysis

The following diabetes-related variables were analyzed:

- **A1C** result
- Maximum glucose
- Insulin
- Diabetes medication

These variables were compared with observed 30-day readmission rates.

# Main Business Analysis

Overall 30-Day Readmission Rate

The project calculated total encounters, total 30-day readmissions, and the overall readmission rate.

Result  
11.16%

## Previous Inpatient History vs Readmission

Previous inpatient utilization was grouped and compared using:

Encounter count
30-day readmissions
Readmission rate

| Previous Inpatient Visits | Readmission Rate |
| ------------------------- | ---------------: |
| 0                         |            8.44% |
| 1                         |           12.92% |
| 2+                        |           21.40% |

The observed readmission rate increased across higher previous inpatient-utilization groups.

## Previous Emergency History vs Readmission

Previous emergency utilization was analyzed using:

- Encounter count
- 30-day readmissions
- Readmission rate

| Previous Emergency Visits | Readmission Rate |
| ------------------------- | ---------------: |
| 0                         |           10.47% |
| 1                         |           14.35% |
| 2+                        |           21.26% |

Higher previous emergency utilization showed higher observed readmission rates.

## Inpatient × Emergency History

Previous inpatient and emergency utilization were analyzed together to identify specific healthcare-utilization segments.

The:

2+ previous inpatient + 2+ previous emergency

segment had the highest observed readmission rate:

28.59%

This combined analysis provides more detailed segmentation than analyzing inpatient or emergency history separately.

## Length of Stay vs Readmission

Hospital length of stay was analyzed against:

- Encounter volume
- 30-day readmissions
- Readmission rate

The analysis showed that observed readmission rates generally increased across several longer-stay groups.

At the same time, encounter volume decreased considerably as length of stay increased.

### Important Observation

Readmission rate should be interpreted together with encounter volume.

A high rate from a small group does not necessarily mean that group has the largest overall operational impact.

## Medication Group vs Readmission

Medication groups were compared using:

- Encounter count
- 30-day readmissions
- Readmission rate

The analysis showed meaningful differences in observed readmission patterns across medication groups.

## A1C Result vs Readmission

**A1C** result categories were compared using:

- Encounter volume
- 30-day readmissions
- Readmission rate

This helped identify differences in observed readmission patterns across **A1C** categories.

## Maximum Glucose vs Readmission

Maximum glucose categories were analyzed to compare observed readmission rates across different glucose-related groups.

## Insulin vs Readmission

Insulin groups were compared based on:

- Encounter count
- 30-day readmissions
- Readmission rate

This provided an additional view of diabetes-treatment-related readmission patterns.

## Diabetes Medication vs Readmission

The diabetesMed variable was analyzed to compare observed readmission patterns across diabetes medication groups.

---

# SQL Analysis

MySQL was used as a separate analytical layer to perform business analysis directly from the database.

Python was mainly used for:

- Data cleaning
- EDA
- Visualization
- Pattern discovery

**SQL** was used to demonstrate how business questions can be answered directly from structured data using aggregation, grouping, sorting, **KPI** calculations, and segmentation.

# SQL Analysis Areas

The **SQL** analysis includes:

- Inpatient history analysis
- Emergency history analysis
- Inpatient × Emergency analysis
- Medication group analysis
- Length of stay analysis
- **A1C** analysis
- Maximum glucose analysis
- Insulin analysis
- Diabetes medication analysis
- Encounter volume analysis
- 30-day readmission count
- Readmission rate
- Share of total readmissions
- Segmentation analysis

Python Libraries Used
Pandas

Used for:

Data loading
Data cleaning
Data transformation
Filtering
Grouping
Aggregation
Analysis
Matplotlib

Used for:

Line charts
Comparison charts
Analytical visualizations
Seaborn

Used for:

Statistical visualizations
Correlation heatmap
Relationship analysis

--- 

Project Visualizations

<img width="1373" height="585" alt="Screenshot 2026-08-11 224547" src="https://github.com/user-attachments/assets/7c5c38d9-65d7-496c-93f5-020753ede64c" />
<img width="1355" height="563" alt="Screenshot 2026-08-11 224655" src="https://github.com/user-attachments/assets/3b02480f-0d49-4f36-8be9-07a60246c4b4" />
<img width="2284" height="1315" alt="Screenshot 2026-08-11 181830" src="https://github.com/user-attachments/assets/592f0c7a-8f5f-410d-9b83-2e5a1281993b" />
<img width="2264" height="1267" alt="Screenshot 2026-08-11 181858" src="https://github.com/user-attachments/assets/dd7ba46c-3972-46f4-9ec8-57a7d045e5ef" />
<img width="2054" height="1284" alt="Screenshot 2026-08-11 182012" src="https://github.com/user-attachments/assets/1363052b-48fc-4553-b43a-ad898bbaa0bb" />
<img width="1386" height="1212" alt="Screenshot 2026-08-11 182414" src="https://github.com/user-attachments/assets/30242d28-aa2c-4e05-b1e4-ebbe6255051d" />
Only the main and useful visualizations were selected instead of creating unnecessary charts.

## Correlation Heatmap

The correlation heatmap examines relationships among selected numerical healthcare variables.

Variables included:

- timeinhospital
- numlabprocedures
- nummedications
- numberinpatient
- numberemergency
- numberoutpatient
- numberdiagnoses
- numprocedures

Project Outcome

This project demonstrates a complete Python + **SQL** healthcare analytics workflow, starting from raw healthcare data and progressing through:

Data Cleaning → **EDA** → **SQL** Analysis → Visualization → Business Insights

The analysis identified important patterns in previous healthcare utilization, hospital stay duration, medication and diagnosis complexity, and diabetes-related variables.

The overall observed 30-day readmission rate was 11.16%, while the 2+ inpatient + 2+ emergency segment had the highest observed readmission rate at 28.59%.

Skills Demonstrated

Python

- Pandas
- Data Cleaning
- Data Validation
- Exploratory Data Analysis
- Data Transformation
- Grouped Analysis
- Correlation Analysis
- Data Visualization
- Matplotlib
- Seaborn
- MySQL


Author

### Sumanth Balaji

Data Analytics Portfolio — Project 3

Python | **SQL** | MySQL | Pandas | Matplotlib | Seaborn | **EDA** | Healthcare Analytics
