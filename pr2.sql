CREATE TABLE Rental(
    rental_id int,
    rental_date int,
    inventory_id int,
    customer_id int,
    return_date int,
	staff_id int,
	last_update int
);

select * from Rental


CREATE TABLE Rental(
    rental_id int,
    rental_date int,
    inventory_id int,
    customer_id int,
    return_date int,
	staff_id int,
	last_update int
);

select * from Rental

CREATE TABLE filmstats(
    film_id varchar (200),
    title varchar (800),
    description varchar (800),
    release_year varchar (800),
    language_id varchar (800),
	original_language_id varchar (800),
	rental_duration varchar (800),
	rental_rate varchar (800),
	lenght varchar (800),
	replacement_cost varchar (800),
	rating varchar (800),
	last_update varchar (800),
	special_features varchar (800),
	fulltext varchar (800)
	
);

ALTER TABLE Filmstats
DROP COLUMN release_year;

ALTER TABLE Filmstats
DROP COLUMN language_id;

ALTER TABLE Filmstats
DROP COLUMN original_language_id; 

ALTER TABLE Filmstats
DROP COLUMN last_update;

ALTER TABLE Filmstats
DROP COLUMN special_features;

ALTER TABLE Filmstats
DROP COLUMN fulltext;


select * from filmstats





