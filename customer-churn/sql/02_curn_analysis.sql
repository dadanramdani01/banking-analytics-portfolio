--- Curn Analysis ---

-- 1. Curn by Geography
SELECT
    ccd."Geography",
    COUNT(*) AS total_customer,
    SUM(ccd."Exited") AS churn_customer,
    ROUND(
        AVG(ccd."Exited")*100,
        2
    ) AS churn_rate
FROM curn_cleaned_data ccd 
GROUP BY ccd."Geography"
ORDER BY churn_rate DESC;

/* Negara germany memiliki tingkat curn tertinggi, yaitu 32.44%
 * dan negara yang memiliki loyalitas tinggi adalah prancis
 */

-- 2. Curn by gender
SELECT
    ccd."Gender",
    ROUND(
        AVG(ccd."Exited")*100,
        2
    ) AS churn_rate
FROM curn_cleaned_data ccd 
GROUP BY ccd."Gender";

/* Customer perempuan memiliki tingkat curn tertinggi, yaitu
 * 25.07% dan laki laki 16.46%
 */

-- 3. Age Segemntation curn
SELECT
    CASE
        WHEN "Age" < 30 THEN 'Young'
        WHEN "Age" BETWEEN 30 AND 50 THEN 'Middle Age'
        ELSE 'Senior'
    END AS age_segment,
    COUNT(*) AS total_customer,
    ROUND(
        AVG(ccd."Exited")*100,
        2
    ) AS churn_rate
FROM curn_cleaned_data ccd 
GROUP BY age_segment
ORDER BY churn_rate DESC;

/* Segmentasi senior memiliki curn tertinggi
 * yaitu (44.65%), di susul middle Age (19.02%)
 * dan young (7.56%)
 */

-- 4. Product ownership curn
SELECT
    ccd."NumOfProducts",
    ROUND(
        AVG(ccd."Exited")*100,
        2
    ) AS churn_rate
FROM curn_cleaned_data ccd 
GROUP BY ccd."NumOfProducts"
ORDER BY churn_rate DESC;

/* Customer yang memiliki layana produk 4 memiliki curn tertinggi,
 * disusul dengan yang memiliki produk 3,1, dan 2
 */

-- 5. Balance impact
SELECT
    ccd."Exited",
    ROUND(
        AVG(ccd."Balance") :: numeric,
        2
    ) AS avg_balance
FROM curn_cleaned_data ccd 
GROUP BY ccd."Exited";

/* rata-rata saldo customer yang pindah layanan lebih tinggi
 * dibandingkan yang stay
 */ 

-- 6. Salary Impact
SELECT
    ccd."Exited",
    ROUND(
        AVG(ccd."EstimatedSalary")::numeric,
        2
    ) AS avg_salary
FROM curn_cleaned_data ccd 
GROUP BY ccd."Exited";

/* Rata rata gaji tertinggi memiliki curn tertinggi
 * dibandingkan gajinya rendah
*/

-- 7. Active membership Impact
SELECT
    ccd."IsActiveMember",
    ROUND(
        AVG(ccd."Exited")*100,
        2
    ) AS churn_rate
FROM curn_cleaned_data ccd 
GROUP BY ccd."IsActiveMember";

/* Tingkat curn yang tinggi adalah customer yang tidak aktif
 */

-- 8. CreditCard Impact
SELECT
    ccd."HasCrCard",
    ROUND(
        AVG(ccd."Exited")*100,
        2
    ) AS churn_rate
FROM curn_cleaned_data ccd 
GROUP BY ccd."HasCrCard";

/* Tingkat curn yang tinggi adalah customer yang tidak punya kredit card
 */

-- 9. Curn by Tenure
SELECT
    ccd."Tenure",
    ROUND(
        AVG(ccd."Exited")*100,
        2
    ) AS churn_rate
FROM curn_cleaned_data ccd 
GROUP BY ccd."Tenure"
ORDER BY churn_rate desc;

/* Tenure 0 memiliki curn rate tertinggi yaitu 23%
 */

-- 10. High Curn Customer Ranking
SELECT
    ccd."CustomerId",
    ccd."Geography",
    ccd."Age",
    ccd."Balance",
    RANK() OVER(
        ORDER BY ccd."Balance" DESC
    ) AS balance_rank
FROM curn_cleaned_data ccd ;
