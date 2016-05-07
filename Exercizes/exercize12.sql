-- Exercise 12  working with table constraints

/*1. Create table called MOVIES that stores below columns and enforce a NOT NULL
constraint on column movie number
? movie number (accepts only numbers)
? movie name (accepts numbers and characters and maximum length can be 100)
? movie type (accepts numbers and characters and maximum length can be 40)
? movie release date (accepts only dates)*/

DROP TABLE movies;
CREATE TABLE movies
(
movie_number NUMBER NOT NULL,
movie_name VARCHAR2(100),
movie_type VARCHAR2(40),
movie_release_date DATE);

DESCRIBE movies;

/*2. Create table called MOVIES that stores below columns and enforce a UNIQUE constraint
on column movie number
? movie number (accepts only numbers)
? movie name (accepts numbers and characters and maximum length can be 100)
? movie type (accepts numbers and characters and maximum length can be 40)
? movie release date (accepts only dates)*/

DROP TABLE movies;
CREATE TABLE movies
(
movie_number NUMBER UNIQUE,
movie_name VARCHAR2(100),
movie_type VARCHAR2(40),
movie_release_date DATE);

/*3. Create table called MOVIES that stores below columns and enforce a PRIMARY KEY
constraint on column movie number
? movie number (accepts only numbers)
? movie name (accepts numbers and characters and maximum length can be 100)
? movie type (accepts numbers and characters and maximum length can be 40)
? movie release date (accepts only dates)*/

DROP TABLE movies;
CREATE TABLE movies
(
movie_number NUMBER PRIMARY KEY,
movie_name VARCHAR2(100),
movie_type VARCHAR2(40),
movie_release_date DATE);

/*4. Create table called MOVIES that stores below columns and enforce a CHECK constraint
on column movie type (values allowed are COMEDY and ACTION)
? movie number (accepts only numbers)
? movie name (accepts numbers and characters and maximum length can be 100)
? movie type (accepts numbers and characters and maximum length can be 40)
? movie release date (accepts only dates)*/

DROP TABLE movies;
CREATE TABLE movies
(
movie_number NUMBER,
movie_name VARCHAR2(100),
movie_type VARCHAR2(40) CHECK (movie_type IN ('COMEDY', 'ACTION')),
movie_release_date DATE);

/*5. Create table called MOVIES that stores below columns and enforce a foreign key
constraint on column movie director number which references table DIRECTOR and
column DIRECTOR_NUMBER.
? movie number (accepts only numbers)
? movie name (accepts numbers and characters and maximum length can be 100)
? movie type (accepts numbers and characters and maximum length can be 40)
? movie release date (accepts only dates)
? movie director number (accepts only numbers)*/

DROP TABLE movies;

CREATE TABLE director
(
director_id NUMBER PRIMARY KEY,
director_name VARCHAR2(40)
);

CREATE TABLE movies
(
movie_number NUMBER,
movie_name VARCHAR2(100),
movie_type VARCHAR2(40) CHECK (movie_type IN ('COMEDY', 'ACTION')),
movie_release_date DATE,
director_id NUMBER REFERENCES director(director_id));