-------------------------------------------------CREATE DATABASE
CREATE DATABASE FineLandTours
ON PRIMARY
(NAME = 'data1',
FILENAME = 'C:\Bryan_Project_2018\data1.mdf',
SIZE = 10MB,
MAXSIZE = UNLIMITED,
FILEGROWTH = 10%
)
LOG ON
(NAME = 'log1',
FILENAME = 'C:\Bryan_Project_2018\log1.ldf',
SIZE = 10MB,
MAXSIZE = UNLIMITED,
FILEGROWTH = 10%
)
GO
PRINT 'DATEBASE CREATED SUCCESSFULLY.';
GO
------------------------------------------------CREATE TABLES
USE FineLandTours
GO
------------------------------------------------- 
CREATE TABLE EmployeeType
(typeid INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
 typeName VARCHAR(30),
 jobDescription VARCHAR(80),
)
GO
CREATE TABLE Employee
(empid INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
 jobTitle VARCHAR(30),
 firstName varchar(30) NOT NULL,
 lastName varchar(30) NOT NULL,
 mobile nchar(10) NOT NULL,
 email varchar(30) NOT NULL,
 hireDate DATETIME,
 birthDate DATETIME,
 [address] NVARCHAR(60),
 city NVARCHAR(20),
 region NVARCHAR(15),
 typeid INT CONSTRAINT employee_type_FK FOREIGN KEY (typeid) REFERENCES EmployeeType(typeid),
)
GO
CREATE TABLE Client
(clientid INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
 firstName varchar(30) NOT NULL,
 lastName varchar(30) NOT NULL,
 mobile nchar(10),
 email varchar(30),
 joinDate datetime,
 [address] NVARCHAR(60),
 city NVARCHAR(20),
 region NVARCHAR(15),
)
GO
CREATE TABLE Bus
(id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
 registration VARCHAR(8),
 driverID INT CONSTRAINT driver_employeetype_FK FOREIGN KEY (driverID) REFERENCES EmployeeType(typeid),
)
GO
CREATE TABLE Accommodation
(acomid INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
 acomName VARCHAR(30),
 acomDescription VARCHAR(30),
)
GO
CREATE TABLE PlannedRoute
(routeid INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
 routeName VARCHAR(30),
 routeDescription VARCHAR(30),
 departDate DATETIME,
 totalDays INT
)
GO
CREATE TABLE RouteAccommodationPlan
(id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
dayOne VARCHAR(30),
dayTwo VARCHAR(30),
dayThree VARCHAR(30),
dayFour VARCHAR(30),
dayFive VARCHAR(30),
daySix VARCHAR(30),
daySeven VARCHAR(30),
dayEight VARCHAR(30),
dayNine VARCHAR(30),
dayTen VARCHAR(30),
dayEleven VARCHAR(30),
dayTwelve VARCHAR(30),
dayThirteen VARCHAR(30),
dayFourteen VARCHAR(30),
routeid INT CONSTRAINT route_accomPlan_FK FOREIGN KEY (routeid) REFERENCES PlannedRoute(routeid),
)
GO
CREATE TABLE TourBooking
(bookingid INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
 bookingDate DATETIME,
 routeName VARCHAR(30),
 routeDescription VARCHAR(60),
 routeID INT,
 departDate DATETIME,
 clientName VARCHAR(60),
 clientMobile NCHAR(10),
 clientEmail VARCHAR(50),
 accommodationID INT,
 accommodationName VARCHAR(30)
)
GO
CREATE TABLE Invoice
(invoiceid INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
 tourName VARCHAR(50),
 employeeName VARCHAR(30),
 clinetName VARCHAR(30),
 totalPrice MONEY,
 invoiceDate DATETIME,
 routeDescription VARCHAR(30),
 tourbookingid INT CONSTRAINT invoice_tourbookingid_FK FOREIGN KEY (tourbookingid) REFERENCES TourBooking(bookingid),
 clientid INT CONSTRAINT client_id_FK FOREIGN KEY (clientid) REFERENCES Client(clientid),
 empid INT CONSTRAINT emp_id_FK FOREIGN KEY (empid) REFERENCES Employee(empid),
)
GO
PRINT 'TABLES CREATED SUCCESSFULLY.';