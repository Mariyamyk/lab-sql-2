use sakila;

select * 
from actor
where first_name ='Scarlett';

select * 
from actor
where last_name ='Johansson';

# 3. How many films (movies) are available for rent?
select count(film_id) 
from film
where rental_duration>0;

#4. How many films have been rented?
select count(rental_id)  from rental;

# 5.What is the shortest and longest rental period?
select max(rental_duration) from film;
select min(rental_duration) from film;

# 6. What are the shortest and longest movie duration
select max(length) as max_duration from film;
select min(length) as min_duration from film;

#7. What's the average movie duration?
select avg(length) from film;

#8. What's the average movie duration expressed in format (hours, minutes)?
select CONCAT(FLOOR(avg(length)/60),'h ',MOD(round(avg(length),0),60),'m') as avg_mov_dur from film;

# 9.How many movies longer than 3 hours?
select count(film_id)
from film
where length >180;

#10. Get the name and email formatted.
select concat( concat(upper(substring(first_name,1,1)), lower(substring(first_name,2)))," ", last_name, " - ", lower(email)) as Customer_Contact from customer;

#11. What's the length of the longest film title?
select max(length(title)) from film;



