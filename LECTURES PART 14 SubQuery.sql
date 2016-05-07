SELECT * FROM customer;

SELECT * 
FROM sales
WHERE customer_id IN
(
SELECT customer_id
FROM customer
WHERE last_name = 'JOSEPH' 
  --OR first_name = 'JOHN'
);

select * from sales;
-- MULTIPLE COLUMNS SUBQUERY (pairwise comparison)
SELECT sales_date, order_id, customer_id, product_id, unit_price
FROM sales 
WHERE (product_id, unit_price) IN
(
SELECT product_id, unit_price
FROM sales
WHERE sales_date = '15-01-01'
);

-- MULTIPLE COLUMNS SUBQUERY (non-pairwise comparison)
SELECT sales_date, order_id, customer_id, product_id, unit_price
FROM sales 
WHERE product_id IN
(
SELECT product_id
FROM sales
WHERE sales_date = '15-01-01'
)
AND unit_price IN
(
SELECT unit_price
FROM sales
WHERE sales_date = '15-01-01'
);

SELECT *
FROM sales x
WHERE total_amount > (SELECT AVG(total_amount) FROM sales y WHERE y.customer_id = x.customer_id);