# Mortgage Predictive Modelling using Machine Learning

## Project Overview
This project develops predictive models to forecast the wait time (in days) between mortgage approval and fund disbursement. By comparing two strategic approaches—a unified full-model strategy versus a segmented modeling strategy—we demonstrate how contextual data segmentation can significantly improve prediction accuracy for structurally distinct applicant groups.

## Tools & Technologies
- R programming
- Regression modelling
- Random Forest
- Data preprocessing & feature engineering
- Exploratory Data Analysis (EDA)
- Model performance evaluation

## Methodology
Two modelling strategies were implemented:

### Strategy A: Full Dataset Modelling
Train a single unified model on the complete dataset using feature imputation for missing values.
- Linear Regression
- Random Forest
- Bayesian modelling
Used to predict time between approval and advance.

### Strategy B: Segmented Modelling
Train separate models for single vs. joint applicants, using only relevant features for each.
- Data segmented by applicant type (Single vs Joint)
- Separate Random Forest models built for each group
- Compared predictive performance

## Key Insights
- Identified key factors affecting processing time
- Demonstrated how segmentation improves prediction accuracy
- Provided data-driven recommendations for operational efficiency

## Files Included
- R code and modelling process
- Final report with results and interpretation
- Dataset 

## Author
MSc Business Analytics Graduate  
University of Bath  
Aspiring Data / Business Analyst
