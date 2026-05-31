------- RISK DRIVER ANLAYSIS -------

-- 01. income impact
SELECT
CASE
    WHEN "AMT_INCOME_TOTAL" < 100000 THEN 'Low Income'
    WHEN "AMT_INCOME_TOTAL" BETWEEN 100000 AND 300000 THEN 'Middle Income'
    ELSE 'High Income'
END AS income_segment,
COUNT(*) AS total_customer,
ROUND(AVG(ccd."TARGET") * 100,2) AS default_rate
FROM credit_cleaned_data ccd 
GROUP BY income_segment
ORDER BY default_rate DESC;

/* Middle income adalah segmen yang paling berisiko gagal bayar
*/

-- 2. Credit Amount Impact
SELECT
CASE
    WHEN "AMT_CREDIT" < 300000 THEN 'Low Credit'
    WHEN "AMT_CREDIT" BETWEEN 300000 AND 700000 THEN 'Medium Credit'
    ELSE 'High Credit'
END AS credit_segment,
ROUND(AVG(ccd."TARGET") *100,2) AS default_rate
FROM credit_cleaned_data ccd 
GROUP BY credit_segment
ORDER BY default_rate DESC;

/* Medium credit paling berisiko gagal bayar
*/

-- 3. Employeement Stability
SELECT
CASE
    WHEN ABS(ccd."YEARS_EMPLOYED")/365 < 2 THEN 'Junior'
    WHEN ABS(ccd."YEARS_EMPLOYED")/365 BETWEEN 2 AND 5 THEN 'Mid Experience'
    ELSE 'Senior Experience'
END AS employment_group,
ROUND(AVG(ccd."TARGET")*100,2) AS default_rate
FROM credit_cleaned_data ccd 
GROUP BY employment_group
ORDER BY default_rate DESC;

/* Pengalaman kerja pendek paling berisiko
 */

-- 4. Family Burden
SELECT
	ccd."CNT_CHILDREN",
	ROUND(AVG(ccd."TARGET")*100,2) AS default_rate
FROM credit_cleaned_data ccd 
GROUP BY ccd."CNT_CHILDREN"
ORDER BY default_rate desc;

/* Orang dengan jumlah keluarga 4 paling berisko
 */

-- 5. Family Risk
SELECT
CASE
    WHEN "CNT_FAM_MEMBERS" <= 2 THEN 'Small Family'
    WHEN "CNT_FAM_MEMBERS" <=4 THEN 'Medium Family'
    ELSE 'Large Family'
END AS family_segment,
ROUND(AVG(ccd."TARGET")*100,2) AS default_rate
FROM credit_cleaned_data ccd 
GROUP BY family_segment
ORDER BY default_rate DESC;

/* Kelompok medium family yang paling beresiko
 */

-- 6. Age Risk
SELECT
CASE
    WHEN "AGE" < 30 THEN 'Young'
    WHEN "AGE" BETWEEN 30 AND 50 THEN 'Middle Age'
    ELSE 'Senior'
END AS age_group,
ROUND(AVG(ccd."TARGET")*100,2) AS default_rate
FROM credit_cleaned_data ccd 
GROUP BY age_group
ORDER BY default_rate DESC;

/* Semakin muda semakin beresiko
 */

-- 7. Credit Bureu Risk
SELECT
CASE
    WHEN "AMT_REQ_CREDIT_BUREAU_YEAR" = 0 THEN 'No Inquiry'
    WHEN "AMT_REQ_CREDIT_BUREAU_YEAR" <=2 THEN 'Low Inquiry'
    ELSE 'High Inquiry'
END AS bureau_segment,
ROUND(AVG(ccd."TARGET")*100,2) AS default_rate
FROM credit_cleaned_data ccd 
GROUP BY bureau_segment
ORDER BY default_rate DESC;

/* Orang yang tidak dicek memiliki risiko tinggi
 */

-- 8. Region Rating Risk
SELECT
	ccd."REGION_RATING_CLIENT",
	ROUND(AVG(ccd."TARGET")*100,2) AS default_rate
FROM credit_cleaned_data ccd 
GROUP BY ccd."REGION_RATING_CLIENT"
ORDER BY default_rate DESC;

/* region 3 yang paling beresiko
 */

-- 9. External credit score
SELECT
CASE
    WHEN "EXT_SOURCE_2" < 0.3 THEN 'Low Score'
    WHEN "EXT_SOURCE_2" < 0.7 THEN 'Medium Score'
    ELSE 'High Score'
END AS credit_score_segment,
ROUND(AVG(ccd."TARGET")*100,2) AS default_rate
FROM credit_cleaned_data ccd 
GROUP by credit_score_segment
ORDER BY default_rate DESC;

/* Makin rendah score makin resiko
 */

-- 10. Combined Risk driver
SELECT
	ccd."NAME_EDUCATION_TYPE",
	ccd."FLAG_OWN_REALTY",
	ccd."YEARS_EMPLOYED",
	ROUND(AVG(ccd."TARGET")*100,2) AS default_rate,
	COUNT(*) AS total_customer
FROM credit_cleaned_data ccd 
GROUP BY
	ccd."NAME_EDUCATION_TYPE",
	ccd."FLAG_OWN_REALTY",
	ccd."YEARS_EMPLOYED"
HAVING COUNT(*) > 50
ORDER BY default_rate DESC;
