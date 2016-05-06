/*Exercise 11 MODIFYING TABLES */
/*1. Insert 3 rows into the MOVIES table, Below is the MOVIES table structure.
Movie_number number,
Movie_name varchar2(100),
Movie_type varchar2(40),
Movie_release_date date*/
SELECT *
FROM movies;

INSERT
INTO movies
(MOVIE_NUMBER, movie_name, movie_type, movie_release_date)
VALUES
(1, 'Terminator 2', 'Action', '92-01-01');
INSERT
INTO movies
(MOVIE_NUMBER, movie_name, movie_type, movie_release_date)
VALUES
(2, 'Die Hard', 'Action','91-02-02');
INSERT
INTO movies
(MOVIE_NUMBER, movie_name, movie_type, movie_release_date)
VALUES
(3, 'Home Alone', 'Comedy', '90-12-01');

commit;

--2. Modify movie release date of movie number 101 from ’12-jan-2015’ to ’14-jan-2015’
UPDATE movies
  SET MOVIE_RELEASE_DATE = '15-01-14'
  
  WHERE movie_number = 101;
  
-- 3. Delete the row from MOVIES table where the movie name is RUSH HOUR.
DELETE
FROM movies
WHERE movie_name = 'Rush Hour';


/*Copy and paste the below SQL’s in SQL Developer and run
them, You will get errors and try to correct those errors.*/

--1. INSERT INTO SALES VALUES '12-jan-2015',3456,101,12,3000,10,30,300,30,330)
SELECT *
FROM sales;

INSERT 
INTO SALES 
VALUES
('15-01-12',3456,101,12,3000,10,30,300,30,330); -- put date into correct format, add parenthesis

delete
from sales
where sales_date ='15-01-12';



-- 2. INSERT INTO SALES VALUES ('12-jan-2015',3456,101,12,3000,10,30,300,30)
INSERT 
INTO SALES 
VALUES ('15-01-12',3456,101,12,3000,10,30,300,30,330); --There was not enough values



-- 3. INSERT INTO SALES VALUES ('12-jan-2015' 3456,101,12,3000,10,30,300,30,330)
INSERT
INTO SALES VALUES ('15-01-12', 3456,101,12,3000,10,30,300,30,330);

--4. INSERT INTO CUSTOMER VALUES
/*(101,'JOHNIJOHNIJOHNIJOHNIJOHNIJOHNIJOHNIJOHNIJOHNIJOHNI33','JOSEPH','A',
NULL,NULL,NULL,NULL,NULL)*/

INSERT 
INTO CUSTOMER 
VALUES
(101,'JOHNI33','JOSEPH','A',
NULL,NULL,NULL,NULL,NULL, Null); -- put correct number of parameers and shorten the first name (or increase allocation length of the table

desc customer;
ALTER TABLE customer
MODIFY (first_name varchar2(100));

select* from customer;
commit

