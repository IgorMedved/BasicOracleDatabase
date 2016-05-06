-- Exercise 10 - creating and modifying tables


/*1. Create table called MOVIES that stores below columns
? movie number (accepts only numbers) 
? movie name (accepts numbers and characters and maximum length can be 100)
? movie type (accepts numbers and characters and maximum length can be 40)
? movie release date (accepts only dates)*/

CREATE TABLE movies
(movie_number number(10),
movie_name varchar2(100),
movie_type varchar2(40),
release_date date);
desc movies;


-- 2. Add a new column movie language (accepts numbers and characters and maximum length can be 30) to the MOVIES table.
ALTER TABLE movies
ADD (movie_language varchar2(30));

--3. Modify the MOVIES table by increasing the maximum length of column movie type to 50.
ALTER TABLE movies
MODIFY (movie_type varchar2(50));


--4. Go ahead and delete the MOVIES table.
DROP TABLE movies;


-- Copy and paste the below SQL’s in SQL Developer and run them, You will get errors and try to correct those errors.

--1. CREATE TABLE SALES (SALES_DATE DATE, ORDER_ID NUMBER )
CREATE TABLE SALES1 (SALES_DATE DATE, ORDER_ID NUMBER ); -- can't create table with the name that already used
desc sales1;

--2. ALTER TABLE CUSTOMER MODIFY (ADDRESS_LINE1 VARCHAR2(10));
ALTER TABLE CUSTOMER MODIFY (ADDRESS_LINE1 VARCHAR2(40)); -- can't decrease the variable length below the value that some rows alread hold
desc customer;

--3. CREATE TABLE MOVIES ( MOVIE_NUMBER NUMBER PRIMARY KEY, MOVIE_NAME VARCHAR2(100) PRIMARY KEY, MOVIE_TYPE VARCHAR2(40), MOVIE_RELEASE_DATE DATE );
CREATE TABLE MOVIES 
( MOVIE_NUMBER NUMBER PRIMARY KEY,
MOVIE_NAME VARCHAR2(100),
MOVIE_TYPE VARCHAR2(40),
MOVIE_RELEASE_DATE DATE ); -- only one primary key per table

desc movies;
