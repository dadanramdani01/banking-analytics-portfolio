# CREDIT RISK INSIGHT DOCUMENTATIONS

## Numerical Risk Pattern
### Observation
Customers with higher default risk tend to be younger, have lower income, possess lower credit scores, and show lower external credit source scores.

### Evidence
EDA results indicate that:
- Younger age groups demonstrate higher default rates.
- Customers with lower income levels exhibit greater repayment difficulties.
- Lower EXT_SOURCE values are associated with a higher probability of loan default.
- Customers with lower AMT_GOODS_PRICE tend to show higher risk profiles.

### Business Interpretation
This pattern suggests that financial capacity and creditworthiness play a crucial role in repayment behavior. Younger customers with limited financial stability and weaker credit indicators may experience greater difficulty managing debt obligations.

## Categorical Risk Pattern
### Observation
Customers with incomplete higher education, predominantly male, renting apartments, and without property ownership tend to exhibit higher default risk.

### Evidence
Categorical analysis shows higher default proportions among:
- Incomplete Higher education groups
- Male customers
- Customers living in rented apartments
- Customers without property ownership
- Business Interpretation

### Business Interpretation
The findings suggest that education level, housing stability, and asset ownership may reflect economic resilience. Customers without fixed assets and with lower educational attainment appear more financially vulnerable.

## Main Risk Driver
### Observation
The strongest variables associated with loan default risk are:
- Age
- External credit source score (EXT_SOURCE)
- Education level
- Goods price (AMT_GOODS_PRICE)

### Evidence
Correlation analysis, EDA visualization, and segmentation consistently indicate stronger risk differentiation across these variables.

### Business Interpretation
These variables should be prioritized in credit scoring systems and risk assessment models, as they provide meaningful signals regarding customer repayment capability

## Low-Risk Customer Segment
### Observation
Customers with higher education, property ownership, and stable income sources (state servant) demonstrate the lowest default risk.

### Evidence
SQL segmentation analysis identified this customer profile as consistently having lower default rates relative to other groups.

### Business Interpretation
This segment may represent an ideal lending target due to stronger repayment reliability. Banks may consider faster approval processes or premium financial offerings for these lower-risk customers.