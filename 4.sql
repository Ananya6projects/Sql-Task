CREATE DATABASE EARTH;
USE EARTH;

CREATE TABLE Continents (
    id INT,
    name VARCHAR(30),
    area_sqkm INT,
    population_million INT,
    num_countries INT,
    largest_country VARCHAR(50),
    highest_peak VARCHAR(50),
    avg_temperature INT
);

INSERT INTO Continents VALUES (1, 'Asia', 44580000, 4700, 49, 'Russia', 'Everest', 22);
INSERT INTO Continents VALUES (2, 'Africa', 30370000, 1400, 54, 'Algeria', 'Kilimanjaro', 27);
INSERT INTO Continents VALUES (3, 'North America', 24710000, 600, 23, 'Canada', 'Denali', 14);
INSERT INTO Continents VALUES (4, 'South America', 17840000, 430, 12, 'Brazil', 'Aconcagua', 25);
INSERT INTO Continents VALUES (5, 'Antarctica', 14000000, 1, 0, 'None', 'Vinson Massif', -50);
INSERT INTO Continents VALUES (6, 'Europe', 10180000, 750, 44, 'Russia', 'Elbrus', 10);
INSERT INTO Continents VALUES (7, 'Australia', 8600000, 40, 3, 'Australia', 'Kosciuszko', 21);
INSERT INTO Continents VALUES (8, 'Zealandia', 4920000, 5, 2, 'New Zealand', 'Aoraki', 15);
INSERT INTO Continents VALUES (9, 'Greenland', 2160000, 1, 1, 'Greenland', 'Gunnbjørn Fjeld', -20);
INSERT INTO Continents VALUES (10, 'Eurasia', 55300000, 5400, 93, 'Russia', 'Everest', 18);
INSERT INTO Continents VALUES (11, 'Middle Earth', 6660000, 200, 10, 'Gondor', 'Mount Doom', 33);
INSERT INTO Continents VALUES (12, 'Atlantis', 10000000, 1000, 1, 'Atlantis', 'Poseidon Peak', 20);
INSERT INTO Continents VALUES (13, 'Pangaea', 148900000, 7000, 1, 'All', 'Super Peak', 25);
INSERT INTO Continents VALUES (14, 'Laurasia', 80000000, 3500, 60, 'Asia', 'Elbrus', 19);
INSERT INTO Continents VALUES (15, 'Gondwana', 70000000, 2500, 50, 'Africa', 'Kilimanjaro', 23);
INSERT INTO Continents VALUES (16, 'Sundaland', 1800000, 250, 5, 'Indonesia', 'Kerinci', 28);
INSERT INTO Continents VALUES (17, 'Indian Subcontinent', 4400000, 1800, 8, 'India', 'K2', 29);
INSERT INTO Continents VALUES (18, 'Scandinavia', 1100000, 25, 4, 'Sweden', 'Galdhøpiggen', 7);
INSERT INTO Continents VALUES (19, 'Arabian Peninsula', 3200000, 450, 7, 'Saudi Arabia', 'Jabal an-Nabi Shu’ayb', 35);
INSERT INTO Continents VALUES (20, 'Central America', 520000, 180, 7, 'Mexico', 'Volcán Tajumulco', 23);

SET SQL_SAFE_UPDATES = 0;

UPDATE Continents SET population_million = 5000 WHERE name = 'Asia';
UPDATE Continents SET avg_temperature = 30 WHERE num_countries > 50;
UPDATE Continents SET largest_country = 'Unknown' WHERE area_sqkm < 2000000;

DELETE FROM Continents WHERE name = 'Atlantis';
DELETE FROM Continents WHERE avg_temperature < 0;

SELECT * FROM Continents WHERE num_countries > 10;
SELECT * FROM Continents WHERE population_million > 1000 AND avg_temperature > 25;
SELECT * FROM Continents WHERE highest_peak = 'Everest' OR highest_peak = 'Kilimanjaro';
SELECT * FROM Continents WHERE name IN ('Asia', 'Africa', 'Europe');
SELECT * FROM Continents WHERE name NOT IN ('Antarctica', 'Atlantis');
SELECT * FROM Continents WHERE area_sqkm BETWEEN 5000000 AND 20000000;
SELECT * FROM Continents WHERE avg_temperature NOT BETWEEN 10 AND 30;

CREATE TABLE Countries (
    id INT,
    name VARCHAR(50),
    capital VARCHAR(50),
    population_million INT,
    area_sqkm INT,
    continent VARCHAR(30),
    official_language VARCHAR(30),
    gdp_billion INT
);

INSERT INTO Countries VALUES
(1, 'India', 'New Delhi', 1400, 3287263, 'Asia', 'Hindi', 3500),
(2, 'China', 'Beijing', 1440, 9596961, 'Asia', 'Mandarin', 17000),
(3, 'United States', 'Washington, D.C.', 331, 9833517, 'North America', 'English', 23000),
(4, 'Brazil', 'Brasília', 213, 8515767, 'South America', 'Portuguese', 1800),
(5, 'Russia', 'Moscow', 146, 17098242, 'Europe', 'Russian', 1800),
(6, 'Germany', 'Berlin', 83, 357022, 'Europe', 'German', 4200),
(7, 'Australia', 'Canberra', 26, 7692024, 'Australia', 'English', 1700),
(8, 'South Africa', 'Pretoria', 60, 1221037, 'Africa', 'English', 800),
(9, 'Egypt', 'Cairo', 109, 1002450, 'Africa', 'Arabic', 400),
(10, 'Mexico', 'Mexico City', 126, 1964375, 'North America', 'Spanish', 1500),
(11, 'Canada', 'Ottawa', 38, 9984670, 'North America', 'English', 2200),
(12, 'Japan', 'Tokyo', 125, 377975, 'Asia', 'Japanese', 5000),
(13, 'France', 'Paris', 67, 640679, 'Europe', 'French', 3600),
(14, 'Saudi Arabia', 'Riyadh', 35, 2149690, 'Asia', 'Arabic', 900),
(15, 'Argentina', 'Buenos Aires', 45, 2780400, 'South America', 'Spanish', 600),
(16, 'Spain', 'Madrid', 47, 505990, 'Europe', 'Spanish', 1700),
(17, 'Italy', 'Rome', 60, 301340, 'Europe', 'Italian', 2100),
(18, 'Indonesia', 'Jakarta', 273, 1904569, 'Asia', 'Indonesian', 1300),
(19, 'Vietnam', 'Hanoi', 98, 331212, 'Asia', 'Vietnamese', 410),
(20, 'New Zealand', 'Wellington', 5, 268021, 'Zealandia', 'English', 250);

UPDATE Countries SET gdp_billion = 4000 WHERE population_million > 1000 AND area_sqkm > 3000000;
UPDATE Countries SET official_language = 'Multiple' WHERE name IN ('India', 'Egypt');
UPDATE Countries SET continent = 'Other' WHERE continent NOT IN ('Europe', 'Asia');
UPDATE Countries SET capital = 'Economic Hub' WHERE gdp_billion BETWEEN 1000 AND 2000;
UPDATE Countries SET name = CONCAT(name, '_Updated') WHERE population_million NOT BETWEEN 50 AND 500;


DELETE FROM Countries WHERE continent = 'North America';
DELETE FROM Countries WHERE gdp_billion < 1000 OR population_million < 10;


SELECT * FROM Countries WHERE area_sqkm > 1000000 AND gdp_billion > 2000;
SELECT * FROM Countries WHERE official_language IN ('English', 'French');
SELECT * FROM Countries WHERE continent NOT IN ('Asia', 'Africa');
SELECT * FROM Countries WHERE population_million BETWEEN 50 AND 200;
SELECT * FROM Countries WHERE gdp_billion NOT BETWEEN 1000 AND 3000;



CREATE TABLE Oceans (
    id INT,
    name VARCHAR(30),
    area_sqkm INT,
    avg_depth_m INT,
    max_depth_m INT,
    bordering_continents VARCHAR(100),
    salinity_ppm INT,
    known_species INT
);

INSERT INTO Oceans VALUES
(1, 'Pacific', 168723000, 3970, 10994, 'Asia, Australia, North America, South America', 35000, 228000),
(2, 'Atlantic', 85133000, 3646, 8486, 'Europe, Africa, North America, South America', 36000, 223000),
(3, 'Indian', 70560000, 3741, 8047, 'Asia, Africa, Australia', 34500, 120000),
(4, 'Southern', 21960000, 4500, 7236, 'Antarctica', 34200, 16000),
(5, 'Arctic', 15558000, 1205, 5450, 'Europe, Asia, North America', 30000, 8000),
(6, 'Tethys', 10000000, 3000, 5000, 'Asia, Europe (historical)', 34000, 500),
(7, 'Panthalassa', 200000000, 5000, 11000, 'Pangaea (historical)', 33000, 1000),
(8, 'Mediterranean', 2500000, 1500, 5267, 'Europe, Africa, Asia', 38000, 17000),
(9, 'Caribbean', 2754000, 2200, 7686, 'North America, South America', 37000, 13000),
(10, 'Coral Sea', 4791000, 2400, 9140, 'Australia', 35500, 4500),
(11, 'Arabian Sea', 3862000, 2700, 4652, 'Asia, Africa', 36000, 8000),
(12, 'Bay of Bengal', 2172000, 2600, 4610, 'Asia', 37000, 11000),
(13, 'Bering Sea', 2300000, 1598, 4151, 'Asia, North America', 32000, 6000),
(14, 'Tasman Sea', 2294000, 1800, 5940, 'Australia, Zealandia', 34500, 5000),
(15, 'Laptev Sea', 700000, 578, 3385, 'Asia', 31000, 2000),
(16, 'Red Sea', 438000, 490, 3040, 'Africa, Asia', 39500, 3000),
(17, 'Baltic Sea', 377000, 55, 459, 'Europe', 7000, 500),
(18, 'North Sea', 575000, 95, 725, 'Europe', 35000, 2300),
(19, 'Hudson Bay', 1238000, 100, 270, 'North America', 29000, 1000),
(20, 'Gulf of Mexico', 1550000, 1615, 4384, 'North America', 36000, 15000);

UPDATE Oceans SET avg_depth_m = 4000 WHERE area_sqkm > 50000000 AND salinity_ppm > 34000;
UPDATE Oceans SET bordering_continents = 'Global' WHERE name IN ('Pacific', 'Atlantic', 'Indian');
UPDATE Oceans SET salinity_ppm = 37000 WHERE known_species BETWEEN 10000 AND 50000;
UPDATE Oceans SET max_depth_m = 6000 WHERE max_depth_m NOT BETWEEN 1000 AND 8000;


DELETE FROM Oceans WHERE known_species < 5000;
DELETE FROM Oceans WHERE name IN ('Arctic', 'Red Sea');


SELECT * FROM Oceans WHERE salinity_ppm > 34000 AND area_sqkm > 20000000;
SELECT * FROM Oceans WHERE known_species > 20000 OR avg_depth_m > 3000;
SELECT * FROM Oceans WHERE name IN ('Pacific', 'Indian', 'Atlantic');
SELECT * FROM Oceans WHERE bordering_continents NOT LIKE '%Europe%' AND bordering_continents NOT LIKE '%Africa%';
SELECT * FROM Oceans WHERE max_depth_m BETWEEN 5000 AND 10000;


