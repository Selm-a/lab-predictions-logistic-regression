USE SAKILA ;

select * from film_rental_1;


create or replace view rented_last_month_ as 
SELECT *,
CASE
    WHEN MONTH(rental_date) = 8 and YEAR(rental_date) = 2005 THEN '1'
    ELSE '0'
END AS rented_last_month
FROM film_rental_1;