-- Exercise 8 JOINS
-- 1. Produce a list which returns all rows from the SALES and PRODUCT tables where there is a matching PRODUCT_ID value in both the SALES and PRODUCT tables.
SELECT *
FROM sales
  INNER JOIN product
  ON sales.product_id = product.product_id;
  
  
--2. Produce a list which returns all rows from the SALES table and only those rows from the PRODUCT table where the joined field PRODUCT_ID is equal.
SELECT *
FROM sales
  LEFT OUTER JOIN product
  ON sales.product_id = product.product_id;
  


-- 3. Produce a list which returns all rows from the PRODUCT table and only those rows from the SALES table where the joined field PRODUCT_ID is equal.
SELECT *
FROM sales
  RIGHT OUTER JOIN product
  ON sales.product_id = product.product_id;
  
-- 4. Produce a list which returns all rows from the SALES and PRODUCT table irrespective of PRODUCT_ID match between these tables. (PRODUCT_ID can match between both these tables or it might not match).
SELECT *
FROM sales
  FULL OUTER JOIN product
  ON sales.product_id = product.product_id;
  
  
/* Copy and paste the below SQL’s in SQL Developer and run them, You will get errors and try to correct those errors. */

-- 1. SELECT ORDER_ID, CUSTOMER_ID FROM SALES S INNER JOIN CUSTOMER C ON S.CUSTOMER_ID = C.CUSTOMER_ID

SELECT order_id, s.customer_id
FROM sales s
  INNER JOIN customer c 
  ON s.customer_id = c.customer_id;
  
 