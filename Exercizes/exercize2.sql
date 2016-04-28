--  LAB 2  
--1. Produce a list of rows showing all columns from the SALES table where total amount greater than 1000. 
select *
from sales
where TOTAL_AMOUNT > 1000;

-- 2. Produce a list of rows showing all columns from the SALES table where total amount is not equal to 44.  
select *
from sales
where TOTAL_AMOUNT!=44;

-- 3. Produce a list of rows showing all columns from the SALES table where quantity is less than or equal to 10.
select *
from sales
where QUANTITY <=10;

-- 4. Produce a list of rows showing all columns from the SALES table where sales date is equal to 9th February 2015  
select *
from sales
where sales_date = '09-feb-2015';

--5. Produce a list of rows showing all columns from the PRODUCT table where color is equal to RED. 
select *
from product
where color = 'RED';

--6. Produce a list of rows showing all columns from the SALES table where total amount is greater than sales amount

select *
from sales
where total_amount > sales_amount;


/* part 2
Copy and paste the below SQL’s in SQL Developer and run them, You will get errors and try to correct those errors.  
1. SELECT * FROM CUSTOMER WHERE FIRST_NAME = JOHN  
2. SELECT SALES_DATE, ORDER_ID, PRODUCT_ID FROM  SALES WHERE SALES_DATE = 01-JAN-2015   */


SELECT * FROM CUSTOMER WHERE FIRST_NAME = 'JOHN'; -- put single quotes around john

SELECT SALES_DATE, ORDER_ID, PRODUCT_ID FROM  SALES WHERE SALES_DATE = '01-jan-2015'; -- -- put single quotes around date
SELECT SALES_DATE, ORDER_ID, PRODUCT_ID FROM  SALES WHERE SALES_DATE = '01-JAn-2015'; -- capitalization in month does not matter