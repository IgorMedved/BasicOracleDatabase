SELECT * 
FROM sales_history
union
select * from sales;

SELECT sales_id, product_id 
FROM sales_history
UNION ALL
SELECT sales_id, product_id 
FROM sales;

SELECT * 
FROM sales_history
INTERSECT
SELECT * FROM sales;

SELECT sales_date, product_id, customer_id
FROM sales
MINUS
SELECT sales_date, product_id, customer_id
FROM sales_history;







SELECT customer_id, product_id 
FROM sales_history
UNION ALL 
SELECT product_id, product_id 
FROM sales; -- as long as the type in the columns are the same the columns will be combined
-- the combined result will have the same column names as first operand in the union command