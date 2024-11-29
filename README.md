
## Querying Data in SQL
This repository demonstrates how to query data from two tables in an SQL database: Country and Persons. It includes the creation of tables, insertion of data, and execution of various SQL queries to retrieve specific information from the database.

Tables and Structure

1. Country Table
   
The Country table contains information about various countries, such as their name, population, and area.

Fields:
Id (INT) - Primary key

Country_name (VARCHAR) - Name of the country

Population (INT) - Population of the country

Area (INT) - Area of the country in square kilometers

2. Persons Table
   
The Persons table stores information about people, including their first and last names, population, rating, and associated country.

Fields:

Id (INT) - Primary key

Fname (VARCHAR) - First name of the person

Lname (VARCHAR) - Last name of the person

Population (INT) - Population of the person

Rating (DECIMAL) - Rating of the person

Country_Id (INT) - Foreign key referring to the Country table

Country_name (VARCHAR) - Name of the country the person belongs to
