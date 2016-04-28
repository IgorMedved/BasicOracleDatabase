/* Exercise 4 - Arithmetic operators */

/*1. Produce a list of rows showing sales date, product number, order number, sales amount,
tax amount and a calculated column (sum of sales amount and tax amount) from the
SALES table.*/

SELECT sales_date, product_id, order_id, sales_amount, tax_amount,
         sales_amount+tax_amount
FROM sales;

/*2. Produce a list of rows showing all columns from the SALES table where quantity plus 10 is
greater THAN OR equal TO 20*/

SELECT *
FROM sales
WHERE quantity+10 >= 20;


/*3. Produce a list of rows showing sales date, product number, order number, sales amount,
tax amount and a calculated column (total amount minus 30) from the SALES table. */

SELECT sales_date, product_id, order_id, sales_amount, tax_amount,
      total_amount - 30
from sales;

-- Note + operator does not concatenate strings