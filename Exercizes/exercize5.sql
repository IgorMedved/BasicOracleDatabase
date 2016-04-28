/*sorting*/

SELECT *
FROM sales
ORDER BY sales_date DESC, quantity DESC ;

SELECT sales_date, sales_amount, total_amount
FROM sales
ORDER BY sales_date;

SELECT *
FROM product
ORDER BY color;

/* Exercise 5 */
/*1. Produce a list of rows showing sales date, product number, order number, sales amount,
tax amount from the SALES table and sort it by column tax amount in ascending order.
*/

SELECT sales_date, product_id, order_id, sales_amount, tax_amount
FROM sales
ORDER BY tax_amount;


/*2. Produce a list of rows showing sales date, product number, order number, sales amount,
tax amount from the SALES table and sort it by column sales amount and tax amount in
ascending order.*/

SELECT sales_date, product_id, order_id, sales_amount, tax_amount
FROM sales
ORDER BY sales_amount, tax_amount;


/*3. Produce a list of rows showing order number, sales date, product number, sales amount,
tax amount from the SALES table and sort it by order number in descending order.
*/

SELECT order_id, sales_date, product_id, sales_amount, tax_amount
FROM sales
ORDER BY order_id DESC;

/*Copy and paste the below SQL’s in SQL Developer and run
them, You will get errors and try to correct those errors. */


/*1. SELECT SALES_DATE, PRODUCT_ID, ORDER_ID, SALES_AMOUNT, TAX_AMOUNT
FROM SALES
ORDER BY TAX_AMOUNT
WHERE SALES_DATE = '01-JAN-2015'*/

SELECT SALES_DATE, PRODUCT_ID, ORDER_ID, SALES_AMOUNT, TAX_AMOUNT
FROM sales
WHERE sales_date = '01-JAN-2015'
ORDER BY tax_amount;




