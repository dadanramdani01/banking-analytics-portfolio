## Insight 1 — Customer Churn is a Significant Business Issue

### Observation
A considerable portion of customers have exited the bank.
### Evidence
SQL churn rate analysis showed that approximately 20,37% of customers churned.
### Business Interpretation
A high churn rate indicates potential issues in customer retention, customer satisfaction, or product engagement.
### Recommendation
The bank should prioritize churn prevention strategies by identifying high-risk customer segments and increasing engagement initiatives.

## Insight 2 — Geography Influences Customer Churn

### Observation
Certain geographic regions exhibit higher churn rates.
### Evidence
Churn analysis by geography showed that customers from France had the highest churn rate.
### Business Interpretation
Customer behavior and competitive banking environments may differ by region.
### Recommendation
The bank should implement region-specific retention strategies and investigate local customer pain points.

## Insight 3 — Older Customers Show Higher Churn Risk

### Observation
Older customer segments demonstrate higher churn probability.
### Evidence
Age segmentation analysis revealed that senior customers have a higher churn rate (44,65%) compared to younger customers.
### Business Interpretation
Older customers may have different financial expectations or be more sensitive to service quality and product offerings.
### Recommendation
The bank should create personalized retention programs targeting senior customers.

## Insight 4 — Inactive Customers Have Higher Churn Probability

### Observation
Inactive members are significantly more likely to churn.
### Evidence
Customers with `IsActiveMember = 0` showed substantially higher churn rates (26,85%) than active members.
### Business Interpretation
Low engagement is a strong indicator of customer disengagement and potential account abandonment.
### Recommendation
The bank should implement reactivation campaigns, loyalty programs, and engagement initiatives.

## Insight 6 — Credit Card Ownership Shows Retention Potential

### Observation
Customers without credit cards tend to exhibit higher churn tendencies.
### Evidence
Churn analysis based on `HasCrCard` revealed differences in churn rates between cardholders and non-cardholders.
### Business Interpretation
Credit card ownership may strengthen customer attachment to the bank ecosystem.
### Recommendation
The bank may increase cross-selling efforts for credit card products.

## Insight 7 — Salary Has Limited Influence on Churn

### Observation
Estimated salary does not show a strong relationship with churn.
### Evidence
Boxplot and correlation analysis (Heatmap) revealed weak separation between churned and retained customers based on salary.
### Business Interpretation
Customer churn appears to be driven more by engagement and behavior than income level.
### Recommendation
The bank should focus on behavioral indicators instead of income-based targeting.

## Insight 8 — High-Risk Customer Segments Can Be Identified

### Observation
Certain customer groups exhibit substantially higher churn risk.
### Evidence
Customer segmentation analysis identified inactive customers with fewer products and older age as high-risk groups.
### Business Interpretation
The bank can proactively identify customers likely to churn before actual attrition occurs.
### Recommendation
The bank should build an early warning churn monitoring system for proactive retention.
