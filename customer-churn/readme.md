# 🏦 Customer Churn Analytics for Banking Retention Strategy

End-to-end customer churn analytics project to identify churn drivers, analyze customer behavior, and support retention strategy in the banking industry using **SQL, Python, Machine Learning, Inferential Statistics, and Power BI**.

---

# 📌 Business Problem

Customer churn is one of the major challenges in the banking industry because losing customers directly impacts profitability and customer lifetime value. Inactive customers, low engagement, and poor product adoption may increase churn risk and reduce customer retention.

---

# 🎯 Project Objective

This project aims to identify the key factors influencing customer churn and develop a predictive analytics framework to support proactive customer retention strategies.

---

# 📂 Dataset Information

**Dataset:** Bank Customer Churn Dataset

**Key Features:**

* Customer demographics
* Geography
* Balance
* Credit card ownership
* Product usage
* Active membership
* Estimated salary
* Churn status (`Exited`)

**Target Variable:**
`Exited`

* `1` = Churn
* `0` = Retained

---

# ⚙️ Methodology

The project follows an end-to-end analytics workflow:

1. **SQL Analysis**

   * Customer churn rate analysis
   * Churn segmentation
   * Geographic churn comparison
   * Product ownership analysis

2. **Exploratory Data Analysis (EDA)**

   * Distribution analysis
   * Correlation analysis
   * Churn pattern visualization
   * Customer segmentation exploration

3. **Inferential Statistics**

   * Independent T-Test
   * Chi-Square Test
   * ANOVA
   * Logistic Regression Interpretation

4. **Machine Learning**

   * Logistic Regression
   * Random Forest (Best Model)

5. **Dashboard Development**

   * Interactive Power BI Dashboard
   * Executive-level churn monitoring

---

# 🧪 Statistical Analysis

This project applies inferential statistics to validate business assumptions:

| Research Question           | Method              |
| --------------------------- | ------------------- |
| Balance impact on churn     | Independent T-Test  |
| Active membership influence | Chi-Square Test     |
| Product ownership effect    | ANOVA               |
| Churn probability factors   | Logistic Regression |

---

# 🤖 Machine Learning

### Models Evaluated

* Logistic Regression
* Random Forest ✅ *(Best Model)*

### Evaluation Metrics

* Accuracy
* Precision
* Recall
* F1 Score
* ROC-AUC

### Best Model

**Random Forest** achieved the best overall performance in identifying churn-risk customers and capturing non-linear customer behavior patterns.

---

# 📊 Dashboard

An interactive **1-page Power BI dashboard** was developed to monitor:

* Customer churn overview
* High-risk customer segments
* Geographic churn distribution
* Customer activity behavior
* Product adoption patterns

---

# 🔍 Key Insights

### 1. Customer Churn is a Significant Business Issue

Approximately **20.37% of customers churned**, indicating a meaningful retention challenge for the bank.

### 2. Geography Influences Churn

Customers from **France** showed the highest churn rate, suggesting regional differences in customer behavior.

### 3. Older Customers Have Higher Churn Risk

Senior customers demonstrated significantly higher churn probability compared to younger customers.

### 4. Inactive Customers are More Likely to Churn

Customers with `IsActiveMember = 0` had substantially higher churn rates, indicating engagement is a strong churn predictor.

### 5. Credit Card Ownership Supports Retention

Customers without credit cards tend to show higher churn tendencies, indicating stronger ecosystem attachment among cardholders.

### 6. Salary Has Limited Influence on Churn

Customer churn appears to be driven more by **behavior and engagement** rather than income level.

### 7. High-Risk Segments Can Be Identified

Inactive, older customers with fewer products were identified as the most vulnerable customer segment.

---

# 💡 Business Recommendations

Based on the analysis, the bank should:

* Implement **proactive churn monitoring systems**
* Increase engagement for **inactive customers**
* Develop **personalized retention programs** for senior customers
* Strengthen **cross-selling strategies** for credit cards and banking products
* Apply **region-specific retention strategies** for high-risk geographic areas

---

# 🛠️ Tech Stack

* **SQL** → Data querying & business analysis
* **Python** → EDA, statistics, machine learning
* **Scikit-Learn** → Predictive modeling
* **Power BI** → Interactive dashboard
* **Pandas, NumPy, Matplotlib, Seaborn** → Data analysis & visualization

---

# 👨‍💻 Author

**Dadan Ramdani**
Physics Student at IPB University | Aspiring Data Analyst & Biomedical Data Scientist
