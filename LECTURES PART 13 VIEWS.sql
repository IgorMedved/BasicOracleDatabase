select * from customer;

CREATE VIEW customer_south AS
SELECT customer_id, first_name, last_name, address_line1, city, country, region
FROM customer
WHERE region = 'SOUTH';

SELECT *
FROM customer_south;


CREATE OR REPLACE VIEW customer_south AS
SELECT customer_id, first_name, last_name, address_line1, city, country, region, address_line2
FROM customer
WHERE region = 'SOUTH';

UPDATE customer_south
  SET address_line1 = '4 Privet Drive'
  WHERE customer_id = 10;
  
COMMIT;

SELECT * FROM SALES;

CREATE VIEW sales_south AS
SELECT s.sales_date, s.order_id, s.product_id, s.customer_id, s.sales_amount,
s.total_amount, c.region
FROM sales s, customer c
WHERE s.customer_id = c.customer_id
   AND c.region = 'SOUTH';
   
select * from sales_south;


CREATE VIEW sales_north AS
SELECT s.sales_date, s.order_id, s.product_id, s.customer_id, s.sales_amount,
s.total_amount, c.region
FROM sales s, customer c
WHERE s.customer_id = c.customer_id
   AND c.region = 'NORTH';

select * from sales_north;