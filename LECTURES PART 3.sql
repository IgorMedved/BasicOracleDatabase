SELECT *
FROM sales
WHERE sales_amount BETWEEN 40 AND 60;

SELECT * 
FROM sales
WHERE total_amount in (66, 550, 44);

SELECT * 
FROM sales
WHERE total_amount NOT IN (66, 550, 44);

SELECT *
FROM product
WHERE product_name LIKE '%icro%';

SELECT *
FROM product
where product_name like '_icro%';

SELECT *
FROM sales
where MOD (total_amount, 6) = 0;

SELECT *
FROM sales
WHERE total_amount < ALL(100, 200, 333);

SELECT *
FROM sales
WHERE total_amount < ANY (100,222,700);

SELECT * 
FROM sales;

SELECT * 
FROM product
WHERE color IS NOT NULL;

SELECT   *
FROM     sales
WHERE    sales_date = '09-feb-2015' OR
         total_amount > 1000;
         
SELECT   *
FROM     sales
WHERE    sales_date = '09-feb-2015' AND
         total_amount > 1000;

      








  
  
  
  