--Exercise 3  
--1. Produce a list of rows showing all columns from the SALES table where total amount is not between 1 and 100.
SELECT *
FROM sales
WHERE total_amount BETWEEN 1 AND 100;

--2. Produce a list of rows showing all columns from the SALES table where quantity has values 20 or 2 or 10

SELECT *
FROM sales
WHERE quantity IN(2, 20, 10);

--3. Produce a list of rows showing all columns from the PRODUCT table where product name starts with MOB  
SELECT *
FROM product
WHERE product_name LIKE 'Mob%'; -- nothing starts with 'MOB%'

--4. Produce a list of rows showing all columns from the SALES table where total amount is greater than 50, 100 and 200.
SELECT *
FROM sales
WHERE total_amount > ALL(50,100,200);

-- 5. produce A LIST OF ROWS showing ALL COLUMNS FROM THE product TABLE WHERE color IS equal TO NULL VALUE.  
SELECT *
FROM product
WHERE color IS NULL;

--6. Produce a list of rows showing all columns from the SALES table where total amount is greater than 100 and quantity is less than 20  
SELECT *
FROM sales
WHERE total_amount > 100
  AND quantity < 20;
  
  
/*Copy and paste the below SQL’s in SQL Developer and run them, You will get errors and try to correct those errors. */

--1. SELECT * FROM PRODUCT WHERE COLOR = NULL 
 SELECT * FROM product WHERE color IS NULL; -- should use IS instead of =
 
--2. SELECT * FROM SALES WHERE QUANTITY IN 20,10,2 
 SELECT * FROM sales WHERE quantity IN (20,10,2); -- parentheses should be used with funcitons such as IN
 
-- 3. SELECT * FROM PRODUCT WHERE PRODUCT_NAME = 'Micro%'; 
SELECT * FROM product WHERE product_name LIKE 'Micro%'; -- no error but LIKE is meant not = which whould only return values identical to Micro%


  


