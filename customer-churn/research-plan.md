# Customer Churn Analytics Research Plan 
## 1. Business Problem 
Customer churn is one of the major challenges in the banking industry because losing customers directly affects profitability and customer lifetime value. Inactive customers, low engagement, and poor product adoption may increase churn risk, causing retention issues for banks.

## 2. Project Objective 
To identify the key factors influencing customer churn and build a predictive analytics framework that helps the bank improve customer retention strategy.

## 3. Business Questions 
- Which customer segment has the highest churn risk? 
- What customer characteristics are associated with churn? 
- How can the bank proactively reduce churn?

## 4. Research Questions (RQ)
- RQ1 Does customer balance significantly affect churn? 
- RQ2 Does active membership influence customer churn? 
- RQ3 Does the number of banking products affect churn probability? 
- RQ4 Are there significant churn differences across geography? 
- RQ5 Which customer segment is most vulnerable to churn?

## 5. Hypothesis 
### H1 
Customers with lower balances are more likely to churn. 
### H2 
Inactive members are more likely to churn. 
### H3 
Customers with fewer products have higher churn probability.

## 6. Statistical Method

| Research Question | Method |
|------------------|--------|
| Mean comparison | Independent T-Test |
| Category relation | Chi-Square Test |
| Multiple groups | ANOVA |
| Churn prediction | Logistic Regression |

## 7. ML Approach

Models:
- Logistic Regression
- Random Forest

Evaluation Metrics:
- Accuracy
- Precision
- Recall
- F1 Score

## 8. Expected Business Impact

The analysis can help banks identify high-risk churn customers and improve retention strategies through targeted engagement and personalized offerings.

## 9. KPI / Success Metric

- Model ROC-AUC > 0.75
- Identification of high-risk customer segments
- Actionable retention recommendations
