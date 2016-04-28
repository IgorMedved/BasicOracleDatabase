/* Exercize 1*/
select * from sales; --Produce a list of rows showing all columns from the SALES table.
select * from product; --Produce a list of rows showing all columns from the PRODUCT table.
select * from customer; --Produce a list of rows showing all columns from the CUSTOMER table.
/* Produce a list of rows showing sales date, order number, product number, customer
number, quantity, total amount from SALES table*/
select sales_date, order_id, product_id, customer_id, quantity, total_amount from sales; 
/* Produce a list of rows showing product number, product name, color from PRODUCT
table*/
select product_id, product_name, color from product;
/* End of Exercize 1*/

/*                Exercize 2
Copy and paste the below SQL’s in SQL Developer and run
them, You will get errors and try to correct those errors.*/

-- SELECT SALES_DATE, ORDER_ID, PRODUCT_ID, FROM SALES
select sales_date, Order_id, product_id from sales;

-- SELECT SALES_DATE, ORDER_ID, PRODUCT_ID SALES
SELECT SALES_DATE, ORDER_ID, PRODUCT_ID from SALES;

-- SELECT SALES_DATE, PRODUCT_ID, TOTA_AMOUNT FROM SALES
SELECT SALES_DATE, PRODUCT_ID, TOTAl_AMOUNT FROM SALES;

-- SELECT * FROM SALE
SELECT * FROM SALEs;





