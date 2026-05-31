----- CUSTOMER SEGMENTATIONS -----

-- 1. High risk Age & Income segment
SELECT
CASE
    WHEN "AGE" < 30 THEN 'Young'
    WHEN "AGE" BETWEEN 30 AND 50 THEN 'Middle Age'
    ELSE 'Senior'
END AS age_group,
CASE
    WHEN "AMT_INCOME_TOTAL" < 100000 THEN 'Low Income'
    WHEN "AMT_INCOME_TOTAL" BETWEEN 100000 AND 300000
    THEN 'Middle Income'
    ELSE 'High Income'
END AS income_segment,
COUNT(*) AS total_customer,
ROUND(AVG(ccd."TARGET")*100,2) AS default_rate
FROM credit_cleaned_data ccd 
GROUP by age_group, income_segment
HAVING COUNT(*) > 30
ORDER BY default_rate DESC;

/* Yang paling beresiko Young dengan middle income dan
 * yang paling aman senior dengan high income
*/

-- 2. Educations Ranking
SELECT
	ccd."NAME_EDUCATION_TYPE",
	ROUND(AVG(ccd."TARGET")*100,2) AS default_rate,
	RANK() OVER(ORDER BY AVG(ccd."TARGET") DESC) AS risk_rank
FROM credit_cleaned_data ccd 
GROUP BY
	ccd."NAME_EDUCATION_TYPE";

/* Yang paling bereseko segment incomple higher dan
 * academic degree
*/

-- 3. TOP high customer risk
SELECT
	ccd."CODE_GENDER",
	ccd."NAME_EDUCATION_TYPE",
	ccd."FLAG_OWN_REALTY",
	COUNT(*) AS total_customer,
	ROUND(AVG(ccd."TARGET")*100,2) AS default_rate
FROM credit_cleaned_data ccd 
GROUP BY
	ccd."CODE_GENDER",
	ccd."NAME_EDUCATION_TYPE",
	ccd."FLAG_OWN_REALTY"
HAVING COUNT(*) > 30
ORDER BY default_rate DESC
LIMIT 10;

/* Yang paling bresiko: Male, incomplete higher, tidak punya properti
*/

-- 4. Highest Risk Customer profile
SELECT
	ccd."CODE_GENDER",
	ccd."NAME_EDUCATION_TYPE",
	ccd."NAME_HOUSING_TYPE",
	ccd."FLAG_OWN_REALTY",
	COUNT(*) AS total_customer,
	ROUND(AVG(ccd."TARGET")*100,2) AS default_rate
FROM credit_cleaned_data ccd 
GROUP BY
	ccd."CODE_GENDER",
	ccd."NAME_EDUCATION_TYPE",
	ccd."NAME_HOUSING_TYPE",
	ccd."FLAG_OWN_REALTY"
HAVING COUNT(*) > 20
ORDER BY
default_rate desc

-- 5. Lowest risk segmen
SELECT
	ccd."NAME_EDUCATION_TYPE",
	ccd."FLAG_OWN_REALTY",
	ccd."NAME_INCOME_TYPE",
	COUNT(*) AS total_customer,
	ROUND(AVG(ccd."TARGET")*100, 2) AS default_rate
FROM credit_cleaned_data ccd 
GROUP BY
	ccd."NAME_EDUCATION_TYPE",
	ccd."FLAG_OWN_REALTY",
	ccd."NAME_INCOME_TYPE"
HAVING COUNT(*) > 20
ORDER BY default_rate asc
LIMIT 5;