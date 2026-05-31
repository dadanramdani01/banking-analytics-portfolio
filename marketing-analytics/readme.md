# 📈 Marketing Campaign Analytics for Banking Deposit Conversion

End-to-end marketing campaign analytics project to identify campaign success factors, optimize customer targeting, and improve deposit conversion using **Python, Inferential Statistics, Customer Segmentation (K-Means), and Power BI**.

---

# 📌 Business Problem

Marketing campaigns in banking are often inefficient due to poor customer targeting, resulting in low conversion rates and unnecessary operational costs. Banks need better insights into customer responsiveness to improve campaign effectiveness and reduce marketing waste.

---

# 🎯 Project Objective

This project aims to identify the key factors influencing deposit subscription success and optimize future marketing strategies using customer analytics and segmentation.

---

# 📂 Dataset Information

**Dataset:** Bank Marketing Campaign Dataset

**Key Features:**

* Customer demographics
* Balance
* Education
* Marital status
* Contact channel
* Campaign frequency
* Previous campaign outcome
* Deposit subscription status

**Target Variable:**
`deposit`

* `yes` = Subscribe to deposit
* `no` = No subscription

---

# ⚙️ Methodology

The project follows an end-to-end analytics workflow:

1. **Exploratory Data Analysis (EDA)**

   * Customer behavior analysis
   * Campaign effectiveness exploration
   * Deposit conversion analysis
   * Marketing response pattern analysis

2. **Inferential Statistics**

   * Independent T-Test
   * Chi-Square Test
   * ANOVA
   * Logistic Regression Interpretation

3. **Customer Segmentation**

   * K-Means Clustering
   * Silhouette Score Evaluation
   * Customer profiling
   * Conversion-based segmentation

4. **Dashboard Development**

   * Interactive Power BI Dashboard
   * Executive-level campaign monitoring

---

# 🧪 Statistical Analysis

This project applies inferential statistics to validate marketing assumptions:

| Research Question                      | Method              |
| -------------------------------------- | ------------------- |
| Balance effect on deposit subscription | Independent T-Test  |
| Previous campaign outcome influence    | Chi-Square Test     |
| Contact frequency impact               | ANOVA               |
| Conversion probability factors         | Logistic Regression |

---

# 🤖 Customer Segmentation

### Method Used

* **K-Means Clustering**
* **Silhouette Score Evaluation**

### Best Number of Clusters

**K = 5** was selected to balance segmentation quality and business interpretability.

### Customer Segments Identified

| Cluster   | Segment Name                    | Conversion Rate |
| --------- | ------------------------------- | --------------- |
| Cluster 0 | Over-Targeted Working Customers | 25.6%           |
| Cluster 1 | Premium Wealth Customers        | 58.2%           |
| Cluster 2 | Mature Conservative Customers   | 48.6%           |
| Cluster 3 | Young Emerging Customers        | 46.3%           |
| Cluster 4 | Highly Engaged Loyal Customers  | **68.0%**       |

---

# 📊 Dashboard

An interactive **4-page Power BI dashboard** was developed to monitor:

### Page 1 — Executive Overview

* Campaign performance overview
* Conversion trend
* Channel performance
* Previous campaign outcome

### Page 2 — Campaign Analytics

* Campaign effectiveness
* Contact frequency analysis
* Conversion behavior
* Marketing fatigue insight

### Page 3 — Customer Analytics

* Customer demographic analysis
* Balance and education patterns
* Deposit behavior exploration

### Page 4 — Customer Segmentation

* Segment profiling
* Conversion comparison
* High-value customer identification
* Segment business actions

---

# 🔍 Key Insights

### 1. Higher Balance Customers Convert More

Customers with higher account balances are more likely to subscribe to deposit products.

### 2. Previous Campaign Success Strongly Predicts Conversion

Customers with successful prior campaign outcomes demonstrate substantially higher conversion probability.

### 3. Excessive Contact Reduces Effectiveness

Customers who were contacted too frequently showed lower responsiveness, indicating **marketing fatigue**.

### 4. Cellular is the Best Marketing Channel

Cellular contact channels consistently produced higher deposit conversion rates than alternative channels.

### 5. Highly Engaged Customers Are the Most Valuable

Customers with strong historical engagement (**Cluster 4**) achieved the **highest conversion rate (68%)**, making them the highest-priority marketing segment.

### 6. Young Customers Represent Untapped Opportunity

Despite lower balances, younger customers (**Cluster 3**) showed strong responsiveness and represent scalable growth opportunities.

### 7. Over-Targeting Reduces Efficiency

Customers with excessive campaign exposure (**Cluster 0**) showed the **lowest conversion rate (25.6%)**, indicating inefficient marketing spending.

---

# 💡 Business Recommendations

Based on the analysis, the bank should:

* Prioritize **Highly Engaged Loyal Customers** for retargeting campaigns
* Develop premium financial offerings for **Premium Wealth Customers**
* Create beginner-friendly deposit products for **Young Emerging Customers**
* Reduce excessive campaign frequency to minimize **marketing fatigue**
* Optimize marketing budget toward **high-conversion customer segments**

---

# 🛠️ Tech Stack

* **Python** → EDA, statistics, clustering
* **Scikit-Learn** → K-Means clustering
* **Power BI** → Interactive dashboard
* **Pandas, NumPy, Matplotlib, Seaborn** → Data analysis & visualization

---

# 👨‍💻 Author

**Dadan Ramdani**
Physics Student at IPB University | Aspiring Data Analyst
