-- SYNONYM

CREATE SYNONYM inventory_data FOR sales;

select *
from inventory_data;

DROP SYNONYM  inventory_data;

-- Sequence

CREATE SEQUENCE numbers
MINVALUE 1
MAXVALUE 1000
START WITH 1
INCREMENT BY 1
CACHE 10;

SELECT numbers.nextval
from dual;

SELECT numbers.currval
FROM dual;

-- GRANT
GRANT SELECT ON sales TO scott;