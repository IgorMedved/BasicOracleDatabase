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



