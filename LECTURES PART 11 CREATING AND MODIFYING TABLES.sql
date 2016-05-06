desc customers;

CREATE TABLE customers
(customer_id number(10),
customer_name varchar2(40),
join_date date);

ALTER TABLE customers
MODIFY (customer_name varchar2(50));

INSERT INTO  customers
(customer_id, customer_name, join_date)
VALUES
(12, 'Igor M', '16-05-06');

INSERT INTO  customers
(customer_id, customer_name, join_date)
VALUES
(13, 'Tom Jerry', '16-05-06');
select * from customers;

commit;

INSERT INTO customers
(customer_id, customer_name, join_date)
select customer_id, customer_name, join_date
from customers;

DELETE 
FROM customers
WHERE customer_id = 12;
commit;



DELETE
FROM customers
WHERE customer_name  = 'Igor M';

rollback;

UPDATE customers
  SET customer_name = 'Cat Mouse'
  WHERE customer_id = 13;
  
  commit;
  
TRUNCATE TABLE customers;
  
  