CREATE DATABASE LIBRARY;
USE LIBRARY;
CREATE TABLE Books (
    BookID INT(10),
    Title VARCHAR(100),
    Author VARCHAR(100),
    Publisher VARCHAR(100),
    ISBN VARCHAR(20),
    Genre VARCHAR(50),
    Price DECIMAL(10, 2),
    PublishedYear INT,
    QuantityAvailable INT
);
SELECT * FROM Books;



CREATE DATABASE HOME;
USE HOME;
CREATE TABLE Homedetails (
HomeName VARCHAR(20),
HomeNo INT(5),
Homeowner VARCHAR(10),
Noofrooms INT(2),
HomeAddress VARCHAR(20),
NOofPet INT(10),
PetNames VARCHAR(10)
);
SELECT * FROM Homedetails;

CREATE DATABASE COLLEGE;
USE COLLEGE;
CREATE TABLE Collegedetails (
CollegeName VARCHAR(20),
Collegeid INT(10),
CollegeAddress VARCHAR(30),
CollegeStartYear INT,
Numberofstaffs INT(30),
Conatct INT(10)
);
SELECT * FROM Collegedetails;


CREATE DATABASE SHOWROOM;
USE SHOWROOM;
CREATE TABLE Details (
Showroomname VARCHAR(10),
ShowrromId INT(10),
Showroomaddress VARCHAR(20),
Showrroomnumber INT(10),
NofofBikes INT(30),
BikeName VARCHAR(20)
);
SELECT * FROM Details;

