-- Data Explorations --

-- 1. Cek ukuran dataset
SELECT 
	COUNT(*) as total_customer
from credit_cleaned_data ccd;

/* Total data 9692
*/

-- 2. Default Distribution
SELECT
    ccd."TARGET",
    COUNT(*) AS total_customer
from credit_cleaned_data ccd 
group by ccd."TARGET";

/* Total yang berisiko gagal bayar ada 755 dan
 * yang aman ada 8937
 */

-- 3. Default rate
select
round(
	avg(ccd."TARGET") * 100, 2) as default_rate
from credit_cleaned_data ccd ;

/* Default rate aitu 7.79%
*/

-- 4. Gender Distribution
select
	ccd."CODE_GENDER",
	count(*) as total_customer
from credit_cleaned_data ccd 
group by ccd."CODE_GENDER";

/* Geder male ada 3286 dan female 6406
*/

-- 5. Average Age
select
	round(avg(ccd."AGE"), 2) as avg_age
from credit_cleaned_data ccd 

/* Rata rata usia customer 43.42
*/

-- 6. Default by gender
select
	ccd."CODE_GENDER",
	round(avg(ccd."TARGET") *100, 2) AS default_rate
from credit_cleaned_data ccd 
group by ccd."CODE_GENDER"
order by default_rate desc;

/* Default rate terbesar adalah Male (9.86) dan female (6.71)
*/

-- 7. Default by Education
select
	ccd."NAME_EDUCATION_TYPE",
	round(avg(ccd."TARGET")*100,2) as default_rate
from credit_cleaned_data ccd 
group by ccd."NAME_EDUCATION_TYPE"
order by default_rate desc;

/* Tingkat pendidikan yang tidak selesai kuliah berisiko tinggi, yiatu 10.71%
 * disusul dengan SMP, dan SMAa
*/

-- 8. Default by Incoming type
select 
	ccd."NAME_INCOME_TYPE",
	round(avg(ccd."TARGET")*100,2) AS default_rate
from credit_cleaned_data ccd 
group by ccd."NAME_INCOME_TYPE"
order by default_rate desc;

/* Customer yang bekerja memiliki risiko terttinggi (9.25%)
*/

-- 9. Housing Risk
select
	ccd."NAME_HOUSING_TYPE",
	round (avg(ccd."TARGET")*100,2) AS default_rate
FROM credit_cleaned_data ccd 
group by ccd."NAME_HOUSING_TYPE"
order by default_rate desc;

/* Risiko yang terttinggi adalah cust. yang sewa apartemen
*/

-- 10. Family Status Risk
select
	ccd."NAME_FAMILY_STATUS",
	round(avg(ccd."TARGET")*100,2) as default_rate
from credit_cleaned_data ccd 
group by ccd."NAME_FAMILY_STATUS"
order by default_rate desc;

/* Rsisiko terttingi adalah orang yang menikah sah secara negara
*/

-- 11. Car ownership
select
	ccd."FLAG_OWN_CAR",
	round(avg(ccd."TARGET")*100,2) as default_rate
FROM credit_cleaned_data ccd 
group by ccd."FLAG_OWN_CAR";

/* Yang tidka punya mobil memiliki risiko tinggi dibanding punya mobil
*/

-- 12. Property ownership
select
	ccd."FLAG_OWN_REALTY",
	round(avg(ccd."TARGET")*100,2) as default_rate
from credit_cleaned_data ccd 
group by ccd."FLAG_OWN_REALTY";

/* Yang tidak punya properti memilii risiko tinggi dibanding punya properti


-- Kesimpulan --

/* Profil customer yang memiliki risiko tinggi untuk gagal bayar pinjaman adalah 
 * dia yang berjenis kekamin laki-laki dengan tingkat penidikan tidak lulus kuliah,
 * sedang bekerja, tetapi sewa apartemen dan sudah menikah secara sah dan tidak punya
 * mobil dan properti
 */