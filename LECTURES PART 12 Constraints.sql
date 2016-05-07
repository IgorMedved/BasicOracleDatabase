desc customers;

drop TABLE customers;

CREATE TABLE customers
(
customer_id NUMBER(10) NOT NULL,
customer_name VARCHAR2(50),
join_date DATE);

select * from customers;

INSERT INTO
customers
(customer_id, customer_name, join_date)
VALUES
(1456, 'JOHN', '15-02-10');

INSERT INTO
customers
(customer_id, customer_name, join_date)
VALUES
(NULL, 'JOHN', '15-02-10');

ALTER TABLE customers
MODIFY (customer_id NULL);

delete
from customers
where customer_id is NULL;

CREATE TABLE customers
(
customer_id NUMBER(10) primary key,
customer_name VARCHAR2(50),
join_date DATE);

desc customers


CREATE TABLE customers
(
customer_id NUMBER(10) NOT NULL,
customer_name VARCHAR2(50),
join_date DATE,
active_flag varchar2(1) CHECK (active_flag IN ('y', 'n')));

ALTER TABLE customers
MODIFY (customer_id UNIQUE);

INSERT INTO
customers
(customer_id, customer_name, join_date, active_flag)
VALUES
(15, 'JOHN', '15-02-10', null);

TRUNCATE TABLE customers;

INSERT INTO
customers
(customer_id, customer_name, join_date, active_flag)
VALUES
(16, 'JOHN', '15-02-10', 'Y');
SELECT *
FROM customers;

/* references  foreign key */
drop table customers;

CREATE TABLE customers
(
customer_id NUMBER,
product_id NUMBER REFERENCES product(product_id),
customer_name VARCHAR2(20),
city VARCHAR2(20),
join_date DATE);

INSERT INTO
customers
(customer_id, product_id, customer_name, join_date, city)
VALUES
(16, 501, 'JOHN', '15-02-10', 'Toronto');

select * from customers;
DESC customers;

desc product
select product_id from product;

ALTER TABLE product
MODIFY (product_id UNIQUE);

commit;

/* multiple constraints*/

CREATE TABLE sales_hist
(
sales_date DATE,
customer_id NUMBER,
product_id NUMBER,
quantity NUMBER,
amount NUMBER,
CONSTRAINT product_dt_pk
PRIMARY KEY (sales_date, customer_id, product_id));

INSERT INTO sales_hist
(sales_date, customer_id, product_id, quantity, amount)
VALUES
('15-01-25', 125, 101,10, 300);

ALTER TABLE sales_hist
ADD CONSTRAINT sales_pc
PRIMARY KEY (sales_date, customer_id, product_id);
select * from sales_hist;

ALTER TABLE sales_hist DISABLE CONSTRAINT sales_pc;
ALTER TABLE sales_hist ENABLE CONSTRAINT sales_pc;
ALTER TABLE sales_hist DROP CONSTRAINT sales_pc;
