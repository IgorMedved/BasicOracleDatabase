SELECT *
FROM sales;

SELECT count(*), sum(total_amount), min(total_amount), max(total_amount)
FROM sales;

SELECT sales_date, sum(total_amount)
FROM sales
GROUP BY sales_date
ORDER BY sales_date;

SELECT sales_date, count (sales_date)
FROM sales
group by sales_date;

SELECT sales_date
FROM sales
GROUP BY sales_date;

SELECT *
FROM product;
SELECT product_id

FROM product
where color is not null
group by color;

SELECT sales_date, product_id, customer_id, sum(total_amount)
FROM sales
GROUP BY sales_date, product_id, customer_id
ORDER BY sales_date, product_id;


select sales_date, product_id,  sum(total_amount)
FROM sales

GROUP BY sales_date, product_id
HAVING sum(total_amount) > 100
ORDER BY sales_date;

select sales_date, product_id,  sum(total_amount)
FROM sales

GROUP BY sales_date, product_id

order by sales_date;




