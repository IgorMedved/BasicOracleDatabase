-- Exercise 13 Views
/*1. Create view called SALES_MOBILE that captures below columns and where product category is equal to Mobile.
? SALES_DATE (Source: SALES table) 
? ORDER_ID (Source: SALES table) 
? QUANTITY (Source: SALES table) 
? UNIT_PRICE (Source: SALES table) 
? TOTAL_AMOUNT (Source: SALES table) 
? PRODUCT_NAME (Source: PRODUCT table) 
? PRODUCT_CATEGORY (Source: PRODUCT table)
*/
CREATE VIEW sales_mobile AS
SELECT s.sales_date,
       s.order_id,
       s.quantity,
       s.unit_price,
       s.total_amount,
       p.product_name,
       p.product_category
FROM sales s, product p
WHERE s.product_id = p.product_id
  AND p.product_category = 'Mobile';
       

select * from sales_mobile;



--2. Add a new column PRODUCT_ID to the SALES_MOBILE view.

CREATE OR REPLACE VIEW sales_mobile AS
SELECT s.sales_date,
       s.order_id,
       s.quantity,
       s.unit_price,
       s.total_amount,
       s.product_id,
       p.product_name,
       p.product_category
FROM sales s, product p
WHERE s.product_id = p.product_id
  AND p.product_category = 'Mobile';

--3. Go ahead and delete the SALES_MOBILE view.

DROP VIEW sales_mobile;



--Copy and paste the below SQL’s in SQL Developer and run them, You will get errors and try to correct those errors.

--1. CREATE VIEW SALES_VIEW SELECT * FROM SALES
CREATE VIEW SALES_VIEW AS 
SELECT * FROM SALES; -- add AS before SELECT