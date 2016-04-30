SELECT *
FROM sales;

SELECT count(*), sum(total_amount), min(total_amount), max(total_amount)
FROM sales;

SELECT sales_date, sum(total_amount)
FROM sales
GROUP BY sales_date
ORDER BY sales_date;





