-- Exercize 9 Functions
-- Run these below SQL statements and check the result.

--1. SELECT ADD_MONTHS('01-Aug-09', 3) FROM DUAL;
SELECT ADD_MONTHS('01-Aug-09', 3) FROM DUAL; -- November

--2. SELECT ADD_MONTHS('01-Aug-09', -3) FROM DUAL;
SELECT ADD_MONTHS('01-Aug-09', -3) FROM DUAL; -- May

--3. SELECT CONCAT('RUSH ', 'HOUR') FROM DUAL;
SELECT CONCAT('RUSH ', 'HOUR') FROM DUAL; -- RUSH HOUR

--4. SELECT LENGTH('SQL Course') FROM DUAL;
SELECT LENGTH('SQL Course') FROM DUAL; --10

--5. SELECT LPAD('course', 9) FROM DUAL;
SELECT LPAD('course', 3), LPAD('course', 20) FROM DUAL; -- prints argument1 + argument2-length spaeces on the left if argument2 < length prints first argument2 charactes of  argument1

-- 6. SELECT RPAD('course', 9) FROM DUAL;
SELECT RPAD('course', 3) FROM DUAL; -- same as LPAD only spaces on the right

--7. SELECT INSTR('Oracle Course', 'r') FROM DUAL;
SELECT INSTR('Oracle Course', 'rs') FROM DUAL; -- position of first character of first instance of argument2 in argument1

-- 8. SELECT LOG(10, 20) FROM DUAL;
SELECT LOG(10, 100) FROM DUAL; -- LOG (a, b) = LOGa b

-- 9. SELECT LAST_DAY(TO_DATE('2015/03/15', 'yyyy/mm/dd')) FROM DUAL;
SELECT LAST_DAY(TO_DATE('2015/03/15', 'yyyy/mm/dd')) FROM DUAL; -- last day of the month for a given date

-- 10. SELECT MONTHS_BETWEEN (TO_DATE ('2015/01/01','yyyy/mm/dd');
SELECT MONTHS_BETWEEN (TO_DATE ('2015/01/01','yyyy/mm/dd'),TO_DATE ('2015/03/01', 'yyyy/mm/dd') ) FROM DUAL; -- date1 - date2 in months


/*Copy and paste the below SQL’s in SQL Developer and run
them, You will get errors and try to correct those errors.*/

--1. SELECT TO_NUMBER('3a') FROM DUAL
SELECT TO_NUMBER('3') FROM DUAL; -- remove a

--2. SELECT TO_DATE('12-01-2015','dd-mon-yyyy') FROM DUAL
SELECT TO_DATE('12-jan-2015','dd-mon-yyyy') FROM DUAL; -- month should be in letters for this format

--3. SELECT TO_DATE('31-feb-2015','dd-mon-yyyy') FROM DUAL
SELECT TO_DATE('28-feb-2015','dd-mon-yyyy') FROM DUAL; -- there is no 31 of February
