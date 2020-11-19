USE sakila;

select * from actor;

show create table actor;

select * from actor
where last_name = "Cage";

select * from actor
where first_name != "Zero" and not "Nick";

select * from actor
where first_name in ("Nick", "Johnny", "James", "Morgan", "Whoopi");

select * from actor
where actor_id between 50 and 150;

select * from actor
where first_name like "C%";

select * from actor
order by first_name;

select * from actor
order by last_name desc;

select count(actor_id) 
from actor;

select distinct first_name
from actor;

select * from category
where name in ("HORROR");

/* 2 */
insert into actor (first_name, last_name)
values ("LOUISE", "ESTRUP");

insert into film_actor (actor_id, film_id)
values (201, 234);
insert into film_actor (actor_id, film_id)
values (201, 123);
insert into film_actor (actor_id, film_id)
values (201, 345);
insert into film_actor (actor_id, film_id)
values (201, 456);
insert into film_actor (actor_id, film_id)
values (201, 567);

update actor
set first_name = "BUNNY", last_name = "RABBIT"
where actor_id = 201;

DELETE FROM actor
WHERE actor_id = 201;

/* 3 */
SELECT * FROM category;

SELECT  actor.first_name, actor.last_name, film.title, category.name FROM actor
JOIN film_actor ON actor.actor_id = film_actor.actor_id
JOIN film on film.film_id = film_actor.film_id
JOIN film_category on film_category.film_id = film_actor.film_id
JOIN category on category.category_id = film_category.category_id
WHERE category.category_id = 11;