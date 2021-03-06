# LearningBasicSQL
Learning the basic of SQL by working on an actual project.

## Project - Movie rental system  

You want to design and create database for movie rental system that has
* cutomer info: full name, contact info, address
* contact info: email and phone
* address info: street, house number, district, postal code, city, country
* movie info: title, description, relase year, rating, list of actors, list of categories, list of features
* movie has at least one actor, and an actor can be in zero or more movies
* movie has at least one category, and an category can be in zero or more movies
* rental info: customer, list of rented movies, price, rental and return date

### ER diagram

Here is entity-relationship (ER) diagram for the database used in this repo.

The diagram depicts the entities, or tables, in the database along with the foreign-key relationships between the tables.

few tips to help you understand the notation:
* Each rectangle represents a table, with the table name above the upper-left corner of the rectangle. The primary-key column(s) are listed first, followed by nonkey columns

* Lines between tables represent foreign key relationships. The markings at either end of the lines represent the allowable quantity, which can be zero (0), one (1), or many (<).


If you look at the relationship between the customer and rental tables, you would say that a rental is associated with exactly one customer, but a customer may have zero, one, or many rentals.

More information on entity-relationship modeling can be found [here](https://en.wikipedia.org/wiki/Entity%E2%80%93relationship_model)

![ER](/assets/er-diagram.png) 
