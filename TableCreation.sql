CREATE TABLE Users (
    ID INT IDENTITY(1,1),
    Name NVARCHAR(50) NOT NULL,
    Surname NVARCHAR(50) NOT NULL,
    Login NVARCHAR(30) NOT NULL,
    Password NVARCHAR(20) NOT NULL,
    Email NVARCHAR(100) NOT NULL,
    Phone NVARCHAR(13) NOT NULL,
    Photo NVARCHAR(MAX)
);

ALTER TABLE Users
ALTER COLUMN Password VARCHAR(50);



CREATE TABLE Categories (
    CategoryId INT IDENTITY(1,1) PRIMARY KEY,
    ImageLink VARCHAR(MAX) NOT NULL,
    Name VARCHAR(255) NOT NULL
);

CREATE TABLE Orders (
    OrderId INT IDENTITY(1,1) PRIMARY KEY,
    OrderDate DATETIME NOT NULL,
    OrderState VARCHAR(50) NOT NULL,
    UserId INT NULL,
    ProductId INT NULL,
    Count INT NOT NULL,
    SumPrice FLOAT NOT NULL,
    Address VARCHAR(255) NOT NULL,
    Cart VARCHAR(MAX) NOT NULL
);

CREATE TABLE Products (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Price FLOAT NOT NULL,
    Rating FLOAT NOT NULL,
    Description VARCHAR(MAX) NOT NULL,
    CategoryId INT NULL, 
    ImageLink VARCHAR(MAX) NOT NULL
);

CREATE TABLE Reviews (
    ReviewID INT IDENTITY(1,1) PRIMARY KEY,
    UserId INT NULL,  
    ProductId INT NULL, 
    ReviewContent VARCHAR(300) NOT NULL,
    UserRating INT NOT NULL
);


CREATE TABLE Carts (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    ProductId INT NULL,  
    UserId INT NULL, 
    Count INT NOT NULL,
    SumPrice FLOAT NOT NULL
);

DROP TABLE Carts;
DROP TABLE Reviews;
DROP TABLE Products;
DROP TABLE Orders;
DROP TABLE Categories;
DROP TABLE Users;

use plat;