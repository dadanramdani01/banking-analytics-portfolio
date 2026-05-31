-- Customer Segmentation --

-- 1. Age + Geography segment
SELECT
    ccd."Geography",
    CASE
        WHEN "Age" < 30 THEN 'Young'
        WHEN "Age" BETWEEN 30 AND 50
            THEN 'Middle Age'
        ELSE 'Senior'
    END AS age_segment,
    COUNT(*) AS total_customer
FROM curn_cleaned_data ccd 
GROUP BY
    ccd."Geography",
    age_segment
order by total_customer desc;

/* Total customer terbanyak yaitu dari prancis dengan 
 * kategori usia middle age (30-50)
 */

-- 2. High balance segment
SELECT
    CASE
        WHEN "Balance" < 50000
            THEN 'Low Balance'
        WHEN "Balance" between 50000 AND 150000
            THEN 'Medium Balance'
        ELSE 'High Balance'
    END AS balance_segment,
    COUNT(*) AS total_customer,
    ROUND(
        AVG(ccd."Exited")*100,
        2
    ) AS churn_rate
FROM curn_cleaned_data ccd 
GROUP BY balance_segment
order by churn_rate desc;

/* Curn rate terttingi yaitu segmen medium balance dengan total cust 5.339
 * dengan tingkat curn 24.11%
*/

-- 3. Salary Segment
SELECT
    CASE
        WHEN "EstimatedSalary" < 50000
            THEN 'Low Salary'
        WHEN "EstimatedSalary" between 50000 AND 100000
            THEN 'Medium Salary'
        ELSE 'High Salary'
    END AS salary_segment,
    ROUND(
        AVG(ccd."Exited")*100,
        2
    ) AS churn_rate
FROM curn_cleaned_data ccd 
GROUP BY salary_segment
order by churn_rate desc;

/* Segmen yang memiliki pendapatan tinggi memiliki tingkat curn tertinggi
*/

-- 4. Product based segmen
SELECT
    ccd."NumOfProducts",
    ccd."IsActiveMember",
    ROUND(
        AVG(ccd."Exited")*100,
        2
    ) AS churn_rate
FROM curn_cleaned_data ccd 
GROUP BY
    ccd."NumOfProducts",
    ccd."IsActiveMember";

-- 5. Top risk segmen
WITH churn_segment AS (
SELECT
    ccd."Geography",
    ccd."Gender",
    ccd."NumOfProducts",
    ccd."IsActiveMember",
    ROUND(
        AVG(ccd."Exited")*100,
        2
    ) AS churn_rate,
    COUNT(*) AS total_customer
FROM curn_cleaned_data ccd 
GROUP BY
    ccd."Geography",
    ccd."Gender",
    ccd."NumOfProducts",
    ccd."IsActiveMember"
)
SELECT *
FROM churn_segment
WHERE total_customer > 50
ORDER BY churn_rate DESC
LIMIT 10;

-- 6. Curn risk score
SELECT
    ccd."CustomerId",
    CASE
        WHEN "IsActiveMember" = 0 AND "NumOfProducts" <= 2 AND "Age" > 40
        THEN 'High Risk'
        WHEN "IsActiveMember" = 0
        THEN 'Medium Risk'
        ELSE 'Low Risk'
    END AS churn_risk
FROM curn_cleaned_data ccd
order by churn_risk  desc;