/*Exercise 6*/


/*1. Produce a list of ALL rows showing order number by combining data from SALES and
SALES_HISTORY table.*/

SELECT order_id
FROM sales
UNION ALL
SELECT order_id
FROM sales_history
ORDER BY order_id;


/*2. Produce a list of DISTINCT rows from SALES and SALES_HISTORY table using column
order number.*/

SELECT order_id
FROM sales
UNION 
SELECT order_id
FROM sales_history;


/*3. Produce a list of COMMON rows between SALES and SALES_HISTORY table using column
order number.*/

SELECT order_id
FROM sales
INTERSECT 
SELECT order_id
FROM sales_history;

/*4. Produce a list of rows which are present in SALES table and are not present in
SALES_HISTORY table using column order number.*/


SELECT order_id
FROM sales
MINUS
SELECT order_id
FROM sales_history;



/*Copy and paste the below SQL’s in SQL Developer and run
them, You will get errors and try to correct those errors.

/*1. SELECT ORDER_ID,CUSTOMER_ID FROM SALES
UNION ALL
SELECT ORDER_ID FROM SALES_HISTORY*/

SELECT order_id,customer_id FROM sales
UNION ALL
SELECT order_id,customer_id FROM sales_history;


/*2. SELECT SALES_DATE, ORDER_ID FROM SALES
UNION ALL
SELECT PRODUCT_ID, ORDER_ID FROM SALES*/

SELECT sales_date, order_id FROM sales
UNION ALL
SELECT sales_date, order_id FROM sales;
