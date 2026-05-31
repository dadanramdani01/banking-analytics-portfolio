# Credit Risk Analytics Research Plan

## 1. Business Problem

Banks face significant financial losses when customers fail to repay loans.
Poor risk assessment may increase non-performing loans and reduce lending profitability.

---

## 2. Project Objective

To identify the factors associated with loan default risk and develop a predictive model for credit risk assessment.

---

## 3. Business Questions

- Which customer profile has the highest default risk?
- Which financial factors influence payment difficulty?
- How can the bank improve lending decisions?

---

## 4. Research Questions

### RQ1
Does income significantly affect default risk?

### RQ2
Does employment stability reduce default probability?

### RQ3
Do external credit scores influence default risk?

### RQ4
Are customers with higher debt-to-income ratios more risky?

### RQ5
Which customer segment has the highest credit risk?

---

## 5. Hypothesis

### H1
Lower-income customers have higher default risk.

### H2
Customers with unstable employment are more likely to default.

### H3
Higher debt-to-income ratios increase payment difficulty.

---

## 6. Statistical Method

| Research Question | Method |
|------------------|--------|
| Mean comparison | Independent T-Test |
| Category relation | Chi-Square Test |
| Multiple groups | ANOVA |
| Risk prediction | Logistic Regression |

---

## 7. ML Approach

Models:
- Logistic Regression
- Random Forest
- XGBoost

Evaluation Metrics:
- ROC-AUC
- Precision
- Recall
- Confusion Matrix

---

## 8. Expected Business Impact

The analysis can improve lending decisions, reduce loan default risk, and support better customer risk segmentation.

---

## 9. KPI / Success Metric

- ROC-AUC > 0.80
- Better high-risk customer identification
- Explainable risk drivers
