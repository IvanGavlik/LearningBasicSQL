/*
 Create tables actor, fi
 */
 CREATE TABLE sakila.actor(
    actor_id serial primary key,
    first_name varchar(45),
    last_name varchar(45),
    last_update timestamp not null
);

create table sakila.film_actor (
    actor_id integer,
    film_id integer,
    last_updated timestamp,
    primary key (actor_id, film_id)
)

create type sakila.rating as enum ('G', 'PG', 'PG-13', 'R', 'NC-17' );
create table sakila.film(
  film_id serial primary key, 
  title varchar(255) not null,
  description text,
  release_year smallint,
  rental_duration interval not null,
  rental_rate decimal(4, 2) not null,
  length smallint,
  replacement_cost decimal(5, 2) not null,
  rating rating,
  special_features text,
  last_update timestamp not null
);

-- set relationships many to many on film - actor (film_actor)
alter table sakila.film_actor
add constraint fk_actor_film_actor
foreign key (actor_id) references sakila.actor (actor_id) on delete restrict on update cascade;

alter table sakila.film_actor
add constraint fk_actor_film_film
foreign key (film_id) references sakila.film (film_id) on delete restrict on update cascade;

