CREATE TABLE students (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
  FirstName VARCHAR (25) NOT NULL, 
  LastName VARCHAR (25) NOT NULL, 
  Address VARCHAR (45) NOT NULL, 
  City VARCHAR (25) NOT NULL,
  State CHAR (2) NOT NULL,
  Zip_Code CHAR (5) NOT NULL,
  EstGradYear CHAR (4) NOT NULL,
  Transfer VARCHAR (20) NULL,
  Email VARCHAR (45),
  Phone VARCHAR (15) );

INSERT INTO table_name (column1, column2, column3, ...)
  VALUES (value1, value2, value3, ...);


INSERT INTO students (FirstName, LastName, Address, City, State, Zip_Code, EstGradYear, Transfer, Email, Phone)
  VALUES ('Rue', 'Johnson', '123 Main St', 'DVilla', 'FL', '11233', '2040', 'yes', 'rue@test.com', '111-222-3333');
  
CREATE TABLE campus (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
  Address VARCHAR (45) NOT NULL, 
  City VARCHAR (25) NOT NULL,
  State CHAR (2) NOT NULL,
  Zip_Code CHAR (5) NOT NULL,
  Email VARCHAR (45),
  Phone VARCHAR (15),
  Website VARCHAR (45));
  

CREATE TABLE staff (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
  FirstName VARCHAR (25) NOT NULL, 
  LastName VARCHAR (25) NOT NULL, 
  Address VARCHAR (45) NOT NULL, 
  City VARCHAR (25) NOT NULL,
  State CHAR (2) NOT NULL,
  Zip_Code CHAR (5) NOT NULL,
  Email VARCHAR (45));
  
CREATE TABLE courses (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
  Enrollment_Type VARCHAR (45) NOT NULL, 
  Venue_Type VARCHAR (45),
  Cedit_Hours INT (1));
  
CREATE TABLE department (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
  Address VARCHAR (45) NOT NULL, 
  Name VARCHAR (25) NOT NULL,
  Email VARCHAR (45),
  Phone VARCHAR (15));
  
CREATE TABLE buildings (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT);


CREATE TABLE rooms (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
  Capacity INT (4) NOT NULL, 
  Type VARCHAR (25) NOT NULL);
  
CREATE TABLE staff_roles (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
  Title VARCHAR (25) NOT NULL, 
  Salary INT (7) NOT NULL);
  
CREATE TABLE term (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
  Name VARCHAR (25) NOT NULL, 
Length VARCHAR (25) NOT NULL);