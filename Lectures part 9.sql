/* built in functions Notes*/
/* dual table */
select sysdate
from dual;

select user
from dual;

/* numeric functions */
select round (49.51541,2)
from dual;

select ceil (48.99)
from dual;

select power (16,2)
from dual;

select power (16,22)
from dual;

select power (1111,3)
from dual;

select sqrt (1234567)
from dual;

/* string functions */

SELECT UPPER('John')
from dual;

select lower('ODDD')
from dual;

select length('hello')
from dual;

select substr ('long sentence', 4, 5)
from dual;

select decode (10, 5, 'good', 10, 'better', 20, 'best')
from dual;


/*date functions*/

select MONTHS_BETWEEN
       (TO_DATE('02-02-1995','MM-DD-YYYY'),
        TO_DATE('01-01-1995','MM-DD-YYYY') )
        from dual;
        
select '01-jan-15'

from dual;

select add_months('1995-02-15', 34)
from dual;

select sales_date
from sales
where sales_date between '15-jan-01' and '15-jan-10';


        
