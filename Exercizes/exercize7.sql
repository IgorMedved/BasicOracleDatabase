/*Exercise 7 Group by*/

--1. Write a query that shows the number of rows in SALES table.
SELECT count (*)
FROM sales;


--2. Produce a list which shows total sales volume broken by sales date from SALES table.
SELECT sales_date, sum(total_amount)
FROM sales
GROUP BY sales_date
ORDER BY sales_date;


/*3. Produce a list which shows maximum sales volume broken by sales date and order
number from SALES table.*/
SELECT sales_date, order_id, MAX(total_amount)
FROM sales
GROUP BY sales_date, order_id
ORDER BY sales_date;



/*4. Produce a list which shows minimum sales volume broken by sales date from SALES table
and minimum sales volume is less than 100. (Hint: use HAVING clause)*/

SELECT sales_date, count (sales_amount)
--, MIN(sales_amount)
FROM sales
where sales_amount < 301
GROUP BY sales_date
HAVING MIN(sales_amount) <301
ORDER BY sales_date;


-- Copy and paste the below SQL’s in SQL Developer and run them, You will get errors and try to correct those errors.
--1. SELECT SALES_DATE, PRODUCT_ID, SUM(TOTAL_AMOUNT) FROM SALES GROUP BY SALES_DATE
select *
from sales;

SELECT sales_date, product_id, SUM(total_amount)
FROM sales
GROUP BY sales_date, product_id; -- make sure that all the columns in SELECT (sales_date, product_id can be grouped correctly

-- 2. SELECT SALES_DATE, PRODUCT_ID, SUM(TOTAL_AMOUNT) FROM SALES GROUP BY SALES_DATE, PRODUCT_ID, SUM(TOTAL_AMOUNT)

SELECT sales_date, product_id, SUM(total_amount)
FROM sales
GROUP BY sales_date, product_id; -- can't use aggregation functions in GROUP BY expression

-- 3. SELECT SALES_DATE, MIN(TOTAL_AMOUNT) FROM SALES GROUP BY SALES_DATE WHERE MIN(TOTAL_AMOUNT)< 100
 SELECT sales_date, MIN(total_amount)
 FROM sales
 
 GROUP BY sales_date
 HAVING MIN(total_amount)< 100; -- WHERE statment doesn't work with aggregation function we need a HAVING statemnt 
 
-- 4. SELECT SALES_DATE, MIN(TOTAL_AMOUNT) FROM SALES GROUP BY SALES_DATE ORDER BY SALES_DATE HAVING MIN(TOTAL_AMOUNT) > 100

SELECT sales_date, MIN(total_amount)
FROM sales 
GROUP BY SALES_DATE 
HAVING MIN(TOTAL_AMOUNT) > 100 
ORDER BY SALES_DATE; /* the order of statements should be     SELECT
                                                              FROM 
                                                              WHERE
                                                              GROUP BY 
                                                              HAVING
                                                              ORDER BY */


--5. SELECT SALES_DATE, MIN(TOTAL_AMOUNT) FROM SALES GROUP BY SALES_DATE WHERE SALES_DATE >= '01-JAN-2015' HAVING MIN(TOTAL_AMOUNT) > 100 ORDER BY SALES_DATE
SELECT SALES_DATE, MIN(TOTAL_AMOUNT)
FROM SALES
WHERE SALES_DATE >= '01-jan-2015' --'01-jan-15' --TO_DATE ('01-JAN-2015', 'DD-MON-YYYY') -- date has to be converted in right format to be compared with >= operator
GROUP BY SALES_DATE
HAVING MIN(TOTAL_AMOUNT) > 100
ORDER BY SALES_DATE; -- same idea as before the statements should go in correct order
