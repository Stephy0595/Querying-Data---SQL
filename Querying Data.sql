CREATE DATABASE Country;
USE Country;

CREATE TABLE Country (
    Id INT PRIMARY KEY,
    Country_name VARCHAR(255),
    Population INT,
    Area INT
);
CREATE TABLE Persons (
    Id INT PRIMARY KEY,
    Fname VARCHAR(255),
    Lname VARCHAR(255),
    Population INT,
    Rating DECIMAL(3, 2),
    Country_Id INT,
    Country_name VARCHAR(255),
    FOREIGN KEY (Country_Id) REFERENCES Country(Id)
);
-- Insert data into Country table
INSERT INTO Country (Id, Country_name, Population, Area) VALUES
(1, 'USA', 331002651, 9833520),
(2, 'India', 1393409038, 3287263),
(3, 'China', 1444216107, 9596961),
(4, 'Canada', 37742154, 9984670),
(5, 'UK', 67886011, 243610),
(6, 'Australia', 25499884, 7692024),
(7, 'Germany', 83783942, 357022),
(8, 'France', 67081000, 551695),
(9, 'Brazil', 212559417, 8515767),
(10, 'Russia', 145912025, 17098242);

-- Insert data into Persons table
INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
(1, 'John', 'Philip', 500000, 4.5, 1, 'USA'),
(2, 'Jane', 'Mathew', 1000000, 4.7, 2, 'India'),
(3, 'Mary', 'Johnson', 1500000, 5.0, 3, 'China'),
(4, 'James', 'Kurien', 1200000, 3.8, 4, 'Canada'),
(5, 'Pavin', 'Mathew', 2000000, 4.6, 5, 'UK'),
(6, 'Robert', 'John', 3500000, 4.3, 6, 'Australia'),
(7, 'Michael', 'Jacob', 2500000, 5.2, 7, 'Germany'),
(8, 'Linda', 'Varghese', 1800000, 4.0, 8, 'France'),
(9, 'William', 'Philip', 2200000, 3.9, 9, 'Brazil'),
(10, 'Elizabeth', 'Mathew', 3000000, 4.9, 10, 'Russia');

SELECT DISTINCT Country_name
FROM Persons;

SELECT Fname AS First_Name, Lname AS Last_Name
FROM Persons;

SELECT *
FROM Persons
WHERE Rating > 4.0;

SELECT Country_name
FROM Country
WHERE Population > 1000000;

SELECT *
FROM Persons
WHERE Country_name = 'USA' OR Rating > 4.5;

SELECT *
FROM Persons
WHERE Country_name IS NULL;

SELECT *
FROM Persons
WHERE Country_name IN ('USA', 'Canada', 'UK');

SELECT *
FROM Persons
WHERE Country_name NOT IN ('India', 'Australia');

SELECT Country_name
FROM Country
WHERE Population BETWEEN 500000 AND 2000000;

SELECT Country_name
FROM Country
WHERE Country_name NOT LIKE 'C%';