-- write your table creation sql here!
DROP TABLE IF EXISTS drink;

CREATE TABLE drink(
    country varchar(40) UNIQUE,
    beer_servings integer,
    spirit_servings integer,
    wine_servings integer,
    total_litres float NOT NULL
    
    PRIMARY KEY (country)
);