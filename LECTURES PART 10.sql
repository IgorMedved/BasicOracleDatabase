select * from sales;
select sales_date as "Sales Date", total_amount as "Total Amount",
    case 
    when total_amount<=100 THEN 'LOW'
    when total_amount<1000 THEN 'MEDIUM'
    else 'HIGH'
    end as "Amount Bracket"
from sales;

select distinct sales_date
from sales;

select distinct sales_date, order_id
from sales;

select sysdate, user
from dual;

select rownum, rowid sales_date
from sales;

/* DDL - data definition language */

CREATE TABLE customers
(customer_id number(10),
customer_name varchar2(50),
join_date DATE);

-- ALTER - add column, modify column, drop column

ALTER TABLE customers
ADD (customer_country varchar2(50));

ALTER TABLE customers
MODIFY (customer_country varchar2(70));

ALTER TABLE customers
DROP COLUMN customer_country;
select * from customers;

select * from cat;

DESC customers;

DROP TABLE customers;

CREATE TABLE sales_backup
AS
SELECT * FROM sales;

CREATE TABLE sales_january
AS
SELECT *
FROM sales
WHERE sales_date BETWEEN '15-01-01' and '15-01-31';

select *
from sales_january;

select * from sales;


