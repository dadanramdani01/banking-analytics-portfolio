--- Business Questions ---

select * 
from 
	curn_cleaned_data ccd 

-- 1. Cek total customer
select
	count(*) as tabel_customer
from
	curn_cleaned_data ccd 

/* Hasil: Total Customer 
 * ada 10.000
 */
	
-- 2. Curn rate
select
    ccd."Exited",
    count(*) as total_customer,
    round(
        count(*) * 100.0 /
        sum(count(*)) over(),
        2
    ) AS percentage
from curn_cleaned_data ccd 
group by ccd."Exited";

/* hasil: Customer yang 
 * keluar ada 20.37%
*/

-- 3. Customer distribution by demography
select
	ccd."Geography",
	count(*) as total_customer
from curn_cleaned_data ccd 
group by ccd."Geography"
order by total_customer desc;

/* hasil: Customer yang dominan ada di france (5.014), 
* germany (2.509), dan spain (2.477)
*/ 

-- 4. Gender Distribution
select
	ccd."Gender",
	count(*) as total_customer
from curn_cleaned_data ccd 
group by ccd."Gender"
order by ccd."Gender" desc;

/* Total customer terbanyak adalah 
 laki-laki dengan jumlah 5.457 dan perempuan 4.543
 */

-- 5. Customer typical profile
select 
	round (avg(ccd."Age"), 2) as avg_age,
	round (avg(ccd."Balance")::numeric, 2) as avg_balancae,
	round (avg(ccd."EstimatedSalary")::numeric, 2) as avg_salary
from curn_cleaned_data ccd

/* Rata rata umur customer 38.92, rata rata saldo customer 76,48
 * dan rata rata gaji yaitu 100.090
 */

-- 6. Product Ownership distribution
select
	ccd."NumOfProducts",
	count (*) as total_customer
from curn_cleaned_data ccd 
group by ccd."NumOfProducts" 
order by "total_customer" desc;

/* Customer masih banyak menggunakan satu produk bank
 * dan disusul oleh dua produk, lalu tiga produk, dan yang paling sedikit empat produk
 */

-- 7. Credit Card Ownership
select 
	ccd."HasCrCard",
	count(*) as total_customer
from curn_cleaned_data ccd 
group by ccd."HasCrCard" 

/* Dari 10 ribu data, banyak customer
 * yang memiliki kartu kredit (7.055)
 */

-- 8. Active membership distribution
select 
	ccd."IsActiveMember",
	count (*)
from curn_cleaned_data ccd 
group by ccd."IsActiveMember" 

/* Dari 10 ribu data, banyak customer 
 * yang masih aktif (5.151)
 */

-- 9. Avg Tenure
select
	round(avg(ccd."Tenure"), 2) as avg_tenure
from curn_cleaned_data ccd 

/* Rata rata tenure 5.01
*/

-- Geography dan gender profile
select
	ccd."Geography",
    ccd."Gender",
    count(*) AS total_customer
from curn_cleaned_data ccd 
group by ccd."Geography", ccd."Gender"
order by total_customer desc;

/* 3 profile customer terbanyak adalah
 * laki laki dari france (2753), perempuan dari france (2261)
 * dan laki laki dari spain (1388)
 */