
DROP DATABASE IF EXISTS cities_database;

CREATE DATABASE cities_database;

USE cities_database;

CREATE TABLE city_start
(
	city_id INT AUTO_INCREMENT,
    city_name VARCHAR(255) NOT NULL,
    latitude FLOAT,
    longitude FLOAT,
    size VARCHAR(100),
    timezone VARCHAR(20),
    mayor VARCHAR(255),
    PRIMARY KEY (city_id)
);

CREATE TABLE country
(
	country_id INT AUTO_INCREMENT,
    country_name VARCHAR(255) NOT NULL,
    country_language VARCHAR(100),
    PRIMARY KEY (country_id)
);

CREATE TABLE city
(
	city_id INT AUTO_INCREMENT,
    city_name VARCHAR(255) NOT NULL,
    latitude FLOAT,
    longitude FLOAT,
    country_id INT,
    size VARCHAR(100),
    timezone VARCHAR(20),
    mayor VARCHAR(255),
    PRIMARY KEY (city_id),
    FOREIGN KEY (country_id) REFERENCES country(country_id)
);

CREATE TABLE population
(
    city_id INT,
    population VARCHAR(100),
    population_from VARCHAR(100),
    retrieval_year INT,
    FOREIGN KEY (city_id) REFERENCES city(city_id)
);

CREATE TABLE weather
(
	city_id INT,
    start_time DATETIME,
    temp FLOAT,
    humidity INT,
    rain FLOAT,
    snow FLOAT,
    wind_speed FLOAT,
    time_retrieved DATETIME,
    FOREIGN KEY (city_id) REFERENCES city(city_id)
);

SELECT * FROM city;
SELECT * FROM country;
SELECT * FROM population;
SELECT * FROM weather;