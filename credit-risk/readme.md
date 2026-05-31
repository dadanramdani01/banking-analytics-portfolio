# 💳 Credit Risk Analytics for Loan Default Prediction

End-to-end credit risk analytics project to identify loan default risk factors, analyze customer financial behavior, and support better lending decisions using **SQL, Python, Machine Learning, Inferential Statistics, and Power BI**.

---

# 📌 Business Problem

Banks face significant financial losses when customers fail to repay loans. Poor risk assessment can increase non-performing loans (NPL), reduce lending profitability, and expose banks to higher financial risk.

---

# 🎯 Project Objective

This project aims to identify the key factors associated with loan default risk and develop a predictive analytics framework to improve credit risk assessment and lending decisions.

---

# 📂 Dataset Information

**Dataset:** Home Credit Default Risk Dataset

**Key Features:**

* Customer demographics
* Employment status
* Income level
* Credit history
* External credit score (`EXT_SOURCE`)
* Housing ownership
* Education level
* Loan amount and goods price

**Target Variable:**
`TARGET`

* `1` = Default Risk
* `0` = Non-Default

---

# ⚙️ Methodology

The project follows an end-to-end analytics workflow:

1. **SQL Analysis**

   * Customer risk segmentation
   * Default rate analysis
   * Demographic profiling
   * Financial behavior analysis

2. **Exploratory Data Analysis (EDA)**

   * Numerical and categorical pattern analysis
   * Correlation analysis
   * Risk visualization
   * Customer segmentation exploration

3. **Inferential Statistics**

   * Independent T-Test
   * Chi-Square Test
   * ANOVA
   * Logistic Regression Interpretation

4. **Machine Learning**

   * Logistic Regression
   * Random Forest
   * XGBoost *(Best Model)*

5. **Dashboard Development**

   * Interactive Power BI Dashboard
   * Executive-level risk monitoring

---

# 🧪 Statistical Analysis

This project applies inferential statistics to validate business assumptions:

| Research Question              | Method              |
| ------------------------------ | ------------------- |
| Income impact on default risk  | Independent T-Test  |
| Employment stability influence | Chi-Square Test     |
| Debt-related differences       | ANOVA               |
| Risk prediction factors        | Logistic Regression |

---

# 🤖 Machine Learning

### Models Evaluated

* Logistic Regression
* Random Forest
* XGBoost ✅ *(Best Model)*

### Evaluation Metrics

* ROC-AUC
* Precision
* Recall
* Confusion Matrix

### Best Model

**XGBoost** achieved the best overall performance in identifying high-risk customers and capturing complex relationships among financial and behavioral variables.

Due to the highly imbalanced dataset (**9:1 ratio**), **SMOTE** was applied to improve minority class representation and enhance predictive performance.

---

# 📊 Dashboard

An interactive **1-page Power BI dashboard** was developed to monitor:

* Credit risk overview
* High-risk customer profiles
* Risk segmentation
* Financial risk drivers
* Default probability patterns

---

# 🔍 Key Insights

### 1. Younger Customers Show Higher Default Risk

Younger customer groups tend to exhibit higher repayment difficulties compared to older customers.

### 2. Lower Income Increases Financial Risk

Customers with lower income levels demonstrate a higher probability of payment difficulties and loan default.

### 3. External Credit Score is a Major Risk Driver

Lower `EXT_SOURCE` scores strongly correlate with higher default probability, making it one of the strongest predictive variables.

### 4. Education and Asset Ownership Matter

Customers with incomplete higher education, rental housing, and no property ownership tend to show higher risk profiles.

### 5. Goods Price Influences Creditworthiness

Customers with lower `AMT_GOODS_PRICE` values tend to exhibit higher default risk.

### 6. Low-Risk Customer Segments Can Be Identified

Customers with higher education, stable employment (*state servant*), and property ownership consistently demonstrate lower default risk.

### 7. Key Risk Drivers are Explainable

The strongest variables associated with credit risk are:

* Age
* External credit score (`EXT_SOURCE`)
* Education level
* Goods price (`AMT_GOODS_PRICE`)

These variables can support explainable and data-driven lending decisions.

---

# 💡 Business Recommendations

Based on the analysis, the bank should:

* Strengthen **risk scoring systems** using explainable financial indicators
* Prioritize **external credit score variables** in lending decisions
* Implement stricter screening for **high-risk customer segments**
* Offer customized loan products for **low-risk customers**
* Develop an **early warning system** for high-risk borrowers

---

# 🛠️ Tech Stack

* **SQL** → Data querying & business analysis
* **Python** → EDA, statistics, machine learning
* **Scikit-Learn & XGBoost** → Predictive modeling
* **SMOTE** → Imbalanced data handling
* **Power BI** → Interactive dashboard
* **Pandas, NumPy, Matplotlib, Seaborn** → Data analysis & visualization

---

# 👨‍💻 Author

**Dadan Ramdani**
Physics Student at IPB University | Aspiring Data Analyst
