USE FineLandTours
GO
----------------------------------------------------------------------------------------------------------------------------------INSERT EMPLOYEE TYPES
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'insertEmployeeType_SP') AND type in (N'P', N'PC'))
  DROP PROCEDURE insertEmployeeType_SP
GO
CREATE PROCEDURE insertEmployeeType_SP 
	   @typeName VARCHAR(30), @jobDescription VARCHAR(100)
AS 
BEGIN
	INSERT INTO EmployeeType(typeName,jobDescription) VALUES(@typeName,@jobDescription)
END
GO
EXECUTE insertEmployeeType_SP 'Bus Drivers','Driver Of Passanger Transport Bus';
EXECUTE insertEmployeeType_SP 'Bus Hostesses','Hostess Onboard Passanger Transport Bus';
EXECUTE insertEmployeeType_SP 'Bus Mechanics','Mechanic Responsible For Vehicle Maintenance';
EXECUTE insertEmployeeType_SP 'Office Staff','Staff Reporting In Administrative Related Positions';
EXECUTE insertEmployeeType_SP 'Managers','Responsible For Managing And Maintaining Client, Employee And Business Affairs';
GO
----------------------------------------------------------------------------------------------------------------------------------INSERT EMPLOYEES
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'insert_employee_SP') AND type in (N'P', N'PC'))
  DROP PROCEDURE insert_employee_SP
GO
CREATE PROCEDURE insert_employee_SP 
	 @jobTitle VARCHAR(30),
	 @firstName VARCHAR(30),
	 @lastName VARCHAR(30),
	 @mobile nchar(10),
	 @email VARCHAR(30),
	 @hireDate DATE,
	 @birthDate DATETIME,
	 @address VARCHAR(60),
	 @city VARCHAR(20),
	 @region NVARCHAR(15),
	 @typeid INT
AS 
BEGIN

	INSERT INTO Employee(jobTitle,firstName,lastName,mobile,email,hireDate,birthDate,[address],city,region,typeid)
		   VALUES(@jobTitle,@firstName,@lastName,@mobile,@email,@hireDate,@birthDate,@address,@city,@region,@typeid)
END
GO
EXECUTE insert_employee_SP 'Bus Driver','Micheal','Fourie','0823521474','mikeFourie@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',1--1
EXECUTE insert_employee_SP 'Bus Driver','Benjamin','Gamoetie','0823521333','benjamin@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','PE',1--2
EXECUTE insert_employee_SP 'Bus Driver','Apollo','Seven','0823521111','apollo@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','NY',1--3
EXECUTE insert_employee_SP 'Bus Driver','Dustin','Van Der Merwe','0823512474','dustin@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','KZN',1--4
EXECUTE insert_employee_SP 'Bus Driver','Jimmy','Dean','0624521474','jimmy@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','PE',1--5
EXECUTE insert_employee_SP 'Bus Driver','Jack','Thunder','0733541474','jack@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',1--6
EXECUTE insert_employee_SP 'Bus Driver','John','Smith','0822221474','john@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',1--7
EXECUTE insert_employee_SP 'Bus Driver','Johan','Pieterse','0488821474','johan@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',1--8
EXECUTE insert_employee_SP 'Bus Driver','Peter','Woodoo','0823787474','peter@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','KZN',1--9
EXECUTE insert_employee_SP 'Bus Driver','Sam','Van Rooyen','0882352321','sam@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','CT',1--10
EXECUTE insert_employee_SP 'Bus Driver','Samantha','Rossi','0823512345','samantha@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','CT',1--11
EXECUTE insert_employee_SP 'Bus Driver','Claire','Ronaldo','0823526541','claire@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','CT',1--12
EXECUTE insert_employee_SP 'Bus Driver','Gabriel','Azazil','0823529854','gabriel@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','PE',1--13
EXECUTE insert_employee_SP 'Bus Driver','Paulus','Fourie','0823521341','paulus@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',1--14
EXECUTE insert_employee_SP 'Bus Driver','Simon','Jackson','0823552141','simon@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',1--15
EXECUTE insert_employee_SP 'Bus Driver','Adolf','Skietler','0823544565','adolf@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',1--16
EXECUTE insert_employee_SP 'Bus Driver','Phillip','Mc Arthur','0823546273','phillip@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',1--17
EXECUTE insert_employee_SP 'Bus Driver','Ralph','Heinz','0823521422','ralph@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',1--18
EXECUTE insert_employee_SP 'Bus Driver','Tobi','Musk','0823521477','tobi@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',1--19
EXECUTE insert_employee_SP 'Bus Driver','Cratos','Nortje','0823981474','cratos@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','NY',1--20
EXECUTE insert_employee_SP 'Bus Driver','Thor','Jansen van Vuuren','0793521516','thor@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','NY',1--21
EXECUTE insert_employee_SP 'Bus Driver','Jin-Wang','Mc Springroll','06423521957','jinWamg@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GNY',1--22
EXECUTE insert_employee_SP 'Bus Driver','Tyson','Ackerman','0823544444','tyson@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','KZN',1--23
EXECUTE insert_employee_SP 'Bus Driver','George','Rocko','0823521468','George@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','KZN',1--24
GO
-----------------------------------------------------------------
-------------------------------------------------------INSERT Hostesses
-----------------------------------------------------------------
EXECUTE insert_employee_SP 'Bus Hostess','Michelle','Zooid','0654123587','michelleZoid@email.com','2011-06-12','1986-02-14','22 Apples street','Centurion','GP',2--1
EXECUTE insert_employee_SP 'Bus Hostess','Tanya','Button','0823521474','mikeFourie@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',2--2
EXECUTE insert_employee_SP 'Bus Hostess','Sarie','Seven','0823521474','mikeFourie@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',2--3
EXECUTE insert_employee_SP 'Bus Hostess','Cindy','Van Der Merwe','0823521474','mikeFourie@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',1--4
EXECUTE insert_employee_SP 'Bus Hostess','Monica','Dean','0823521474','mikeFourie@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',2--5
EXECUTE insert_employee_SP 'Bus Hostess','Adelle','Thunder','0823521474','mikeFourie@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',2--6
EXECUTE insert_employee_SP 'Bus Hostess','Rochelle','Smith','0823521474','mikeFourie@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',2--7
EXECUTE insert_employee_SP 'Bus Hostess','Aniska','Pieterse','0823521474','mikeFourie@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',2--8
EXECUTE insert_employee_SP 'Bus Hostess','Eleen','Woodoo','0823521474','mikeFourie@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',2--9
EXECUTE insert_employee_SP 'Bus Hostess','Wilma','Van Rooyen','0823521474','mikeFourie@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',2--10
EXECUTE insert_employee_SP 'Bus Hostess','Tammy','Rossi','0823521474','mikeFourie@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',2--11
EXECUTE insert_employee_SP 'Bus Hostess','Samantha','Ronaldo','0823521474','mikeFourie@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',2--12
EXECUTE insert_employee_SP 'Bus Hostess','Amy','Azazil','0823521474','mikeFourie@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',2--13
EXECUTE insert_employee_SP 'Bus Hostess','Jacqui','Fourie','0823521474','mikeFourie@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',2--14
EXECUTE insert_employee_SP 'Bus Hostess','Bianca','Jackson','0823521474','mikeFourie@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',2--15
EXECUTE insert_employee_SP 'Bus Hostess','Chantelle','Skietler','0823521474','mikeFourie@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',2--16
EXECUTE insert_employee_SP 'Bus Hostess','Ilona','Mc Arthur','0823521474','mikeFourie@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',2--17
EXECUTE insert_employee_SP 'Bus Hostess','Nadine','Heinz','0823521474','mikeFourie@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',2--18
EXECUTE insert_employee_SP 'Bus Hostess','Nadia','Musk','0823521474','mikeFourie@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',2--19
EXECUTE insert_employee_SP 'Bus Hostess','Annika','Nortje','0823521474','mikeFourie@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',2--20
EXECUTE insert_employee_SP 'Bus Hostess','Odette','Jansen van Vuuren','0823521474','mikeFourie@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',2--21
EXECUTE insert_employee_SP 'Bus Hostess','Megan','Mc Springroll','0823521474','mikeFourie@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',2--22
EXECUTE insert_employee_SP 'Bus Hostess','Charne','Ackerman','0823521474','mikeFourie@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',2--23
EXECUTE insert_employee_SP 'Bus Hostess','Amanda','Rocko','0823521474','mikeFourie@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',2--24
GO
-----------------------------------------------------------------
-------------------------------------------------------INSERT Mechanics
-----------------------------------------------------------------
EXECUTE insert_employee_SP 'Bus Mechanics','Hein','Prinsloo','0654123587','hein@email.com','2011-06-12','1986-02-14','22 Apples street','Centurion','GP',3--1
EXECUTE insert_employee_SP 'Bus Mechanics','Tiaan','Prinsloo','0823521474','tiaan@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',3--2
EXECUTE insert_employee_SP 'Bus Mechanics','Alfred','Becker','0823521474','alfred@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',3--3
EXECUTE insert_employee_SP 'Bus Mechanics','Andrew','Vanstaden','0823521474','andrew@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',3--4
EXECUTE insert_employee_SP 'Bus Mechanics','Brendan','Cloete','0823521474','brendan@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',3--5
EXECUTE insert_employee_SP 'Bus Mechanics','Rudolph','Moller','0823521474','mikeFourie@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',3--6
EXECUTE insert_employee_SP 'Bus Mechanics','Werner','Wewege','0823521474','mikeFourie@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',3--7
EXECUTE insert_employee_SP 'Bus Mechanics','Anton','Botes','0823521474','mikeFourie@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',3--8
GO
-----------------------------------------------------------------
-------------------------------------------------------INSERT Office Staff
-----------------------------------------------------------------
EXECUTE insert_employee_SP 'Office Staff','Micheal','Fourie','0823521474','mikeFourie@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',4--1
EXECUTE insert_employee_SP 'Office Staff','Benjamin','Gamoetie','0823521333','benjamin@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',4--2
EXECUTE insert_employee_SP 'Office Staff','Apollo','Seven','0823521111','apollo@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',4--3
EXECUTE insert_employee_SP 'Office Staff','Dustin','Van Der Merwe','0823512474','dustin@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','KZN',1--4
EXECUTE insert_employee_SP 'Office Staff','Jimmy','Dean','0624521474','jimmy@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','KZN',4--5
EXECUTE insert_employee_SP 'Office Staff','Jack','Thunder','0733541474','jack@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','KZN',4--6
EXECUTE insert_employee_SP 'Office Staff','John','Smith','0822221474','john@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',4--7
EXECUTE insert_employee_SP 'Office Staff','Johan','Pieterse','0488821474','johan@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','PE',4--8
EXECUTE insert_employee_SP 'Office Staff','Peter','Woodoo','0823787474','peter@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','PE',4--9
EXECUTE insert_employee_SP 'Office Staff','Sam','Van Rooyen','0882352321','sam@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',4--10
EXECUTE insert_employee_SP 'Office Staff','Samantha','Rossi','0823512345','samantha@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',4--11
EXECUTE insert_employee_SP 'Office Staff','Claire','Ronaldo','0823526541','claire@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',4--12
EXECUTE insert_employee_SP 'Office Staff','Gabriel','Azazil','0823529854','gabriel@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',4--13
EXECUTE insert_employee_SP 'Office Staff','Paulus','Fourie','0823521341','paulus@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',4--14
EXECUTE insert_employee_SP 'Office Staff','Simon','Jackson','0823552141','simon@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',4--15
EXECUTE insert_employee_SP 'Office Staff','Adolf','Skietler','0823544565','adolf@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','NY',4--16
EXECUTE insert_employee_SP 'Office Staff','Phillip','Mc Arthur','0823546273','phillip@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','NY',4--17
EXECUTE insert_employee_SP 'Office Staff','Ralph','Heinz','0823521422','ralph@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',4--18
EXECUTE insert_employee_SP 'Office Staff','Tobi','Musk','0823521477','tobi@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',4--19
EXECUTE insert_employee_SP 'Office Staff','Cratos','Nortje','0823981474','cratos@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',4--20
EXECUTE insert_employee_SP 'Office Staff','Micheal','Fourie','0823521474','mikeFourie@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',4--1
EXECUTE insert_employee_SP 'Office Staff','Benjamin','Gamoetie','0823521333','benjamin@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',4--2
EXECUTE insert_employee_SP 'Office Staff','Apollo','Seven','0823521111','apollo@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',4--3
EXECUTE insert_employee_SP 'Office Staff','Dustin','Van Der Merwe','0823512474','dustin@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',4--4
EXECUTE insert_employee_SP 'Office Staff','Jimmy','Dean','0624521474','jimmy@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','PE',4--5
EXECUTE insert_employee_SP 'Office Staff','Jack','Thunder','0733541474','jack@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','PE',4--6
EXECUTE insert_employee_SP 'Office Staff','John','Smith','0822221474','john@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','CT',4--7
EXECUTE insert_employee_SP 'Office Staff','Johan','Pieterse','0488821474','johan@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','CT',4--8
EXECUTE insert_employee_SP 'Office Staff','Peter','Woodoo','0823787474','peter@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','CT',4--9
EXECUTE insert_employee_SP 'Office Staff','Sam','Van Rooyen','0882352321','sam@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','CT',4--10
EXECUTE insert_employee_SP 'Office Staff','Samantha','Rossi','0823512345','samantha@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',4--11
EXECUTE insert_employee_SP 'Office Staff','Claire','Ronaldo','0823526541','claire@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',4--12
EXECUTE insert_employee_SP 'Office Staff','Gabriel','Azazil','0823529854','gabriel@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',4--13
EXECUTE insert_employee_SP 'Office Staff','Paulus','Fourie','0823521341','paulus@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',4--14
EXECUTE insert_employee_SP 'Office Staff','Simon','Jackson','0823552141','simon@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',4--15
EXECUTE insert_employee_SP 'Office Staff','Adolf','Skietler','0823544565','adolf@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',4--16
EXECUTE insert_employee_SP 'Office Staff','Phillip','Mc Arthur','0823546273','phillip@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',4--17
EXECUTE insert_employee_SP 'Office Staff','Ralph','Heinz','0823521422','ralph@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',4--18
EXECUTE insert_employee_SP 'Office Staff','Tobi','Musk','0823521477','tobi@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',4--19
EXECUTE insert_employee_SP 'Office Staff','Cratos','Nortje','0823981474','cratos@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',4--20
-----------------------------------------------------------------
-------------------------------------------------------INSERT Office Managers
-----------------------------------------------------------------
EXECUTE insert_employee_SP 'Managers','Phillip','Mc Arthur','0823546273','phillip@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','PE',5--17
EXECUTE insert_employee_SP 'Managers','Ralph','Heinz','0823521422','ralph@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',5--18
EXECUTE insert_employee_SP 'Managers','Tobi','Musk','0823521477','tobi@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','KZN',5--19
EXECUTE insert_employee_SP 'Managers','Cratos','Nortje','0823981474','cratos@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','CT',5--20
GO
-----------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------INSERT CLIENTS
-----------------------------------------------------------------
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'insertClient_SP') AND type in (N'P', N'PC'))
  DROP PROCEDURE insertClient_SP
GO
CREATE PROCEDURE insertClient_SP 
	     @firstName varchar(30),
		 @lastName varchar(30),
		 @mobile nchar(10),
		 @email varchar(30),
		 @joinDate DATE,
		 @address NVARCHAR(60),
		 @city NVARCHAR(20),
		 @region NVARCHAR(15)
AS 
BEGIN
	INSERT INTO Client(firstName,lastName,mobile,email,joinDate,[address],city,region)
	VALUES(@firstName,@lastName,@mobile, @email, @joinDate, @address, @city, @region)
END
GO
EXECUTE insertClient_SP 'Hein','Van Tonder','0826854562', 'heinvantonder@email.com', '2017-12-08', '3657 Braam Pretorius street', 'Pretoria', 'GP';
EXECUTE insertClient_SP 'Fransis','Van Tonder','0846259742', 'fransis@email.com', '2017-02-04', '264 West street', 'Pretoria', 'GP';
EXECUTE insertClient_SP 'Frik','Viljoen','073123654', 'frik@email.com', '2017-02-04', '224 Duncan ave.', 'Centurion', 'JHB';
EXECUTE insertClient_SP 'Kristy','Klein','0741235984', 'kristy@email.com', '2016-01-16', '4561 Trash Trail.', 'Texas', 'TX';
EXECUTE insertClient_SP 'Karl','Klein','073123658', 'karl@email.com', '2017-10-11', '224 Duncan ave.', 'Centurion', 'JHB';
EXECUTE insertClient_SP 'Walace','Boon','073123654', 'frik@email.com', '2017-02-04', '224 Duncan ave.', 'Centurion', 'JHB';
EXECUTE insertClient_SP 'Taylor','Jackson','073123654', 'tylor@email.com', '2017-02-04', '224 Duncan ave.', 'Parys', 'FS';
EXECUTE insertClient_SP 'Dixy','Hogan','073123654', 'frik@email.com', '2017-02-04', '224 Duncan ave.', 'Texas', 'TX';
GO
-----------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------INSERT BUSSES
-----------------------------------------------------------------
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'insertBus_SP') AND type in (N'P', N'PC'))
  DROP PROCEDURE insertBus_SP
GO
CREATE PROCEDURE insertBus_SP 
	     @registration VARCHAR(30),
		 @driverID INT
AS 
BEGIN
	INSERT INTO Bus(registration,driverID)
	VALUES(@registration,@driverID)
END
GO
EXECUTE insertBus_SP 'WHS973GP', '1'
EXECUTE insertBus_SP 'WHS974GP','1'
EXECUTE insertBus_SP 'WHS975GP','1'
EXECUTE insertBus_SP 'WHS977GP','1'
EXECUTE insertBus_SP 'WHS978GP','1'
EXECUTE insertBus_SP 'WHS975GP','1'
EXECUTE insertBus_SP 'WHS979GP','1'
EXECUTE insertBus_SP 'WHS988GP','1'
EXECUTE insertBus_SP 'WHS999GP','1'
EXECUTE insertBus_SP 'WHS873GP','1'
EXECUTE insertBus_SP 'WHS324GP','1'
EXECUTE insertBus_SP 'WHS687GP','1'
EXECUTE insertBus_SP 'WHS984GP','1'
EXECUTE insertBus_SP 'WHS541GP','1'
EXECUTE insertBus_SP 'WHS142GP','1'
EXECUTE insertBus_SP 'WHS327GP','1'
EXECUTE insertBus_SP 'WHS158GP','1'
EXECUTE insertBus_SP 'WHS377GP','1'
EXECUTE insertBus_SP 'WHS333GP','1'
EXECUTE insertBus_SP 'WHS151GP','1'
EXECUTE insertBus_SP 'WHS515GP','1'
EXECUTE insertBus_SP 'WHS652GP','1'
EXECUTE insertBus_SP 'WHS390GP','1'
EXECUTE insertBus_SP 'WHS221GP','1'
GO

-----------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------INSERT ACCOMMODATION
-----------------------------------------------------------------
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'insertAccom_SP') AND type in (N'P', N'PC'))
  DROP PROCEDURE insertAccom_SP
GO
CREATE PROCEDURE insertAccom_SP 
	     @acomName VARCHAR(30),
		 @acomDescription VARCHAR(60)
AS 
BEGIN
	INSERT INTO Accommodation(acomName,acomDescription)
	VALUES(@acomName,@acomDescription)
END
GO
EXECUTE insertAccom_SP 'Bush1','Accommodation Description'
EXECUTE insertAccom_SP 'Bush2','Accommodation Description'
EXECUTE insertAccom_SP 'Bush3','Accommodation Description'
EXECUTE insertAccom_SP 'Bush4','Accommodation Description'
EXECUTE insertAccom_SP 'Bush5','Accommodation Description'
EXECUTE insertAccom_SP 'Bush6','Accommodation Description'
EXECUTE insertAccom_SP 'Bush7','Accommodation Description'
EXECUTE insertAccom_SP 'Bush8','Accommodation Description'
EXECUTE insertAccom_SP 'Bush9','Accommodation Description'
EXECUTE insertAccom_SP 'Bush10','Accommodation Description'
EXECUTE insertAccom_SP 'Bush11','Accommodation Description'
EXECUTE insertAccom_SP 'Bush12','Accommodation Description'
EXECUTE insertAccom_SP 'Bush13','Accommodation Description'
EXECUTE insertAccom_SP 'Bush14','Accommodation Description'
EXECUTE insertAccom_SP 'Bush15','Accommodation Description'
EXECUTE insertAccom_SP 'Bush16','Accommodation Description'
EXECUTE insertAccom_SP 'Bush17','Accommodation Description'
EXECUTE insertAccom_SP 'Bush18','Accommodation Description'
EXECUTE insertAccom_SP 'Bush19','Accommodation Description'
EXECUTE insertAccom_SP 'Bush20','Accommodation Description'
EXECUTE insertAccom_SP 'Bush21','Accommodation Description'
EXECUTE insertAccom_SP 'Bush22','Accommodation Description'
EXECUTE insertAccom_SP 'Bush23','Accommodation Description'
EXECUTE insertAccom_SP 'Bush24','Accommodation Description'
GO

-----------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------INSERT PLANNED ROUTE
-----------------------------------------------------------------
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'insertPlannedRoute_SP') AND type in (N'P', N'PC'))
  DROP PROCEDURE insertPlannedRoute_SP
GO
CREATE PROCEDURE insertPlannedRoute_SP 
			 @routeName VARCHAR(30),
			 @routeDescription VARCHAR(30),
			 @departDate DATE,
			 @totalDays INT
AS 
BEGIN
	INSERT INTO PlannedRoute(routeName,routeDescription,departDate,totalDays)
	VALUES(@routeName,@routeDescription,@departDate,@totalDays)
END
GO
EXECUTE insertPlannedRoute_SP 'Wine Route Tour','Beautiful Wine Route Country Side','2018-06-11',14;
EXECUTE insertPlannedRoute_SP 'Wine Route Tour','Beautiful Wine Route Country Side','2018-06-11',7;
EXECUTE insertPlannedRoute_SP 'West Coast','Beautiful West Coast Ocean Views','2018-07-11',14;
EXECUTE insertPlannedRoute_SP 'West Coast','Beautiful West Coast Ocean Views','2018-07-11',7;
EXECUTE insertPlannedRoute_SP 'Kruger National Park','Beautiful World Of The Wild','2018-08-11',14;
EXECUTE insertPlannedRoute_SP 'Kruger National Park','Beautiful World Of The Wild','2018-08-11',7;
EXECUTE insertPlannedRoute_SP 'The Garden Route Tour','Beautiful Wine Route Country Side','2018-06-11',14;
EXECUTE insertPlannedRoute_SP 'The Garden Route Tour','Beautiful Wine Route Country Side','2018-06-11',7;
GO
-----------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------INSERT AccomPlan
-------------------------------------------------------View Accommodations
CREATE VIEW V_acomNames(AccommodationName)
AS
SELECT acomName
FROM Accommodation
GO
-------------------------------------------------------------------
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'insertAccomPlan_SP') AND type in (N'P', N'PC'))
  DROP PROCEDURE insertAccomPlan_SP
GO
CREATE PROCEDURE insertAccomPlan_SP
AS 
BEGIN

	DECLARE @routeDays INT;
	--DECLARE @dayOne VARCHAR(30),
	--		@dayTwo VARCHAR(30),
	--		@dayThree VARCHAR(30),
	--		@dayFour VARCHAR(30),
	--		@dayFive VARCHAR(30),
	--		@daySix VARCHAR(30),
	--		@daySeven VARCHAR(30)

	SET @routeDays = (SELECT totalDays 
					  FROM PlannedRoute);

	IF @routeDays BETWEEN 0 AND 7
		BEGIN		
			INSERT INTO RouteAccommodationPlan
			SELECT TOP 7 acomName AS 'AccommodationPlan'
			FROM Accommodation
		END

	ELSE IF @routeDays BETWEEN 1 AND 14
		BEGIN
			INSERT INTO RouteAccommodationPlan 
			SELECT TOP 14 acomName AS 'AccommodationPlan'
			FROM Accommodation
		END
END
GO
--EXECUTE insertPlannedRoute_SP 2 
GO

---------------------------
-----------------------------VIEWS TO USE WHEN BOOKING A TOUR
CREATE VIEW V_CreateTours(RouteName,RouteDescription,RouteID,DepartDate)
AS
	SELECT routeName, routeDescription, routeid, departDate 
	FROM PlannedRoute 

GO
CREATE VIEW V_GetClientDetails(ClientID,FullName,Mobile,Email)
AS
	SELECT clientid, firstName +' '+ lastName AS 'Client Full Name',mobile,email
	FROM Client
GO
CREATE VIEW V_Accommodation(AccommodationID,AccommodationName)
AS
	SELECT acomid,acomName
	FROM Accommodation

GO
----------------------------------------------------------------------------------------------------------------------------------INSERT NEW BOOKINGS
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'createTourBooking_SP') AND type in (N'P', N'PC'))
  DROP PROCEDURE createTourBooking_SP
GO
CREATE PROCEDURE createTourBooking_SP 	
	@inID INT
AS 

	DECLARE @bookingDate Date,
			@RouteName VARCHAR(30),@RouteDescription VARCHAR(60),@RouteID INT,@DepartDate DATE,
			@clientID INT,@FullName VARCHAR(60),@Mobile NCHAR(10),@Email VARCHAR(50),@accomID INT,@accomName VARCHAR(30)
	SET @bookingDate = (SELECT GETDATE());
	SET @clientID = (SELECT clientID
					 FROM Client)

BEGIN
	
	SELECT @RouteName = RouteName, @RouteDescription = RouteDescription,@RouteID = RouteID,@DepartDate = DepartDate
	FROM V_CreateTours

	SELECT  @clientID = ClientID, @FullName = FullName , @Mobile = Mobile ,@Email = Email 
	FROM V_GetClientDetails

	SELECT @accomID = AccommodationID,@accomName = AccommodationName
	FROM V_Accommodation

	INSERT INTO TourBooking(bookingDate,routeName,routeDescription,routeID,departDate,clientName,clientMobile,clientEmail,accommodationID,accommodationName)
		   VALUES(@bookingDate,@RouteName,@RouteDescription,@RouteID,@DepartDate,@FullName,@Mobile,@Email, @accomID,@accomName)

END
GO
EXECUTE createTourBooking_SP 2;

----------------------------------------------------------------------------------------------------------------------------------INSERT INVOICE
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'createInvoice_SP') AND type in (N'P', N'PC'))
  DROP PROCEDURE createInvoice_SP
GO
CREATE PROCEDURE createInvoice_SP 
			 @tourName VARCHAR(50),
			 @employeeName VARCHAR(30),
			 @clinetName VARCHAR(30),
			 @totalPrice MONEY,
			 @invoiceDate DATETIME,
			 @routeDescription VARCHAR(30),
			 @tourbookingid INT,
			 @clientid INT,
			 @empid INT
AS 
BEGIN
	INSERT INTO Invoice(tourName,employeeName,clinetName,totalPrice,invoiceDate,routeDescription,tourbookingid,clientid,empid)
	VALUES(@tourName,@employeeName,@clinetName,@totalPrice,@invoiceDate,@routeDescription,@tourbookingid,@clientid,@empid)
END
GO
EXECUTE createInvoice_SP 'Wine Route Tour','Benjamin','Kristy Klein',202.50,'2017-06-11','Beautiful Wine Route Country Side',2,2,2
GO
----------------------------------------------------------------------------------------------------------------------------VIEW FOR INVOICES
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'clientInvoice_VIEW') AND type in (N'V'))
  DROP VIEW clientInvoice_VIEW
GO
CREATE VIEW clientInvoice_VIEW(ClientID,ClientName,BookingDate,EmployeeName,InvoiceAmount,RouteID,RouteName)
AS
	SELECT Client.clientid, Client.firstName + ' ' + Client.lastName AS 'Client Fullname : ', TourBooking.bookingDate, Employee.firstName + ' ' + Employee.lastName AS 'Employee Fullname : ',Invoice.totalPrice,PlannedRoute.routeName,PlannedRoute.routeDescription
	FROM Client
	INNER JOIN Invoice
	ON Invoice.clientid = Client.clientid
	INNER JOIN TourBooking
	ON TourBooking.bookingid = Invoice.tourbookingid
	INNER JOIN Employee
	ON Employee.empid = Invoice.empid
	INNER JOIN PlannedRoute
	ON Invoice.tourbookingid = PlannedRoute.routeid
GO
select * from clientInvoice_VIEW;
GO
---------------------------------------------------------------------------------------------PROC TO VIEW INVOICES
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'viewInvoice_SP') AND type in (N'P', N'PC'))
  DROP PROCEDURE viewInvoice_SP
GO
CREATE PROCEDURE viewInvoice_SP 
	@clientid INT
AS 
BEGIN
	SELECT ClientID,ClientName,BookingDate,EmployeeName,InvoiceAmount,RouteID,RouteName
	FROM clientInvoice_VIEW
	WHERE ClientID = @clientid


END
GO
EXECUTE viewInvoice_SP 2;
GO
-------------------------------------------------------------------------------------------PROC TO UPDATE Employees
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'updateEmployeeType_SP') AND type in (N'P', N'PC'))
  DROP PROCEDURE updateEmployeeType_SP
GO
CREATE PROCEDURE updateEmployeeType_SP 
				@id INT,
				@typeName VARCHAR(30),
				@jobDescription VARCHAR(80)
AS
BEGIN
	UPDATE EmployeeType
	SET typeName = ISNULL(@typeName,typeName),
		jobDescription = ISNULL(@jobDescription,jobDescription)
	WHERE typeid = @id;
END
GO
EXECUTE updateEmployeeType_SP 'NewType','',6;
EXECUTE updateEmployeeType_SP 'alsoNewType','',7;
GO
-------------------------------------------------------------------------------------------PROC TO UPDATE Employees
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'updateEmployee_SP') AND type in (N'P', N'PC'))
  DROP PROCEDURE updateEmployee_SP
GO
CREATE PROCEDURE updateEmployee_SP 
				@id INT,
				 @jobTitle VARCHAR(30),
				 @firstName varchar(30),
				 @lastName varchar(30),
				 @mobile nchar(10),
				 @email varchar(30),
				 @hireDate DATE,
				 @birthDate DATE,
				 @address NVARCHAR(60),
				 @city NVARCHAR(20),
				 @region NVARCHAR(15),
				 @typeid INT
AS
BEGIN
	UPDATE Employee
	SET jobTitle = ISNULL(@jobTitle,jobTitle),
		firstName = ISNULL(@firstName,firstName),
		lastName = ISNULL(@lastName ,lastName),
		mobile = ISNULL(@mobile ,mobile),
		email = ISNULL(@email,email),
		hireDate = ISNULL(@hireDate,hireDate),
		birthDate = ISNULL(@birthDate,birthDate),
		[address] = ISNULL(@address,[address]),
		city = ISNULL(@city,city),
		region = ISNULL(@region ,region),
		typeid = ISNULL(@typeid,typeid)
	WHERE empid = @id
END
GO
EXECUTE updateEmployee_SP 'Office Staff','Cratos','Nortje','0823981474','cratos@email.com','2017-06-12','1991-06-12','236 Rooibok street','Pretoria','GP',4,4--20
GO

-------------------------------------------------------------------------------------------PROC TO UPDATE Client
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'updateClient_SP') AND type in (N'P', N'PC'))
  DROP PROCEDURE updateClient_SP
GO
CREATE PROCEDURE updateClient_SP
				 @id INT,
				 @firstName varchar(30),
				 @lastName varchar(30),
				 @mobile nchar(10),
				 @email varchar(30),
				 @joinDate datetime,
				 @address NVARCHAR(60),
				 @city NVARCHAR(20),
				 @region NVARCHAR(15)
AS
BEGIN
	UPDATE Client
	SET firstName = ISNULL(@firstName,firstName),
		lastName = ISNULL(@lastName ,lastName),
		mobile = ISNULL(@mobile ,mobile),
		email = ISNULL(@email,email),
		joinDate = ISNULL(@joinDate,joinDate),
		[address] = ISNULL(@address,[address]),
		city = ISNULL(@city,city),
		region = ISNULL(@region ,region)
	WHERE clientid = @id
END
GO
EXECUTE updateClient_SP 'Hein','Van Tonder','0826854562', 'heinvantonder@email.com', '2017-12-08', '3657 Braam Pretorius street', 'Pretoria', 'GP',1; ---WHERE CLIENT ID IS
GO

-------------------------------------------------------------------------------------------PROC TO UPDATE Bus
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'updateBus_SP') AND type in (N'P', N'PC'))
  DROP PROCEDURE updateBus_SP
GO
CREATE PROCEDURE updateBus_SP
				 @id INT,
				 @registration VARCHAR(8),
				 @driverID INT
AS
BEGIN
	UPDATE Bus
	SET registration = ISNULL(@registration,registration),
		driverID = ISNULL(@driverID,driverID)
	WHERE id = @id
END
GO
EXECUTE updateBus_SP 'WHG976GP',1,1;
GO
-------------------------------------------------------------------------------------------PROC TO UPDATE Accommodation
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'updateAccommodation_SP') AND type in (N'P', N'PC'))
  DROP PROCEDURE updateAccommodation_SP
GO
CREATE PROCEDURE updateAccommodation_SP
				 @id INT,
				 @acomName VARCHAR(30),
				 @acomDescription VARCHAR(30)
AS
BEGIN
	UPDATE Accommodation
	SET acomName = ISNULL(@acomName,acomName),
		acomDescription = ISNULL(@acomDescription,acomDescription)
	WHERE acomid = @id
END
GO
EXECUTE updateAccommodation_SP 'New AccomName','New Accommodation Description',1;
GO
-------------------------------------------------------------------------------------------PROC TO UPDATE PlannedRoute
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'updatePlannedRoute_SP') AND type in (N'P', N'PC'))
  DROP PROCEDURE updatePlannedRoute_SP
GO
CREATE PROCEDURE updatePlannedRoute_SP
				 @id INT,
				 @routeName VARCHAR(30),
				 @routeDescription VARCHAR(30),
				 @departDate DATETIME,
				 @totalDays INT
AS
BEGIN
	UPDATE PlannedRoute
	SET routeName = ISNULL(@routeName,routeName),
		routeDescription = ISNULL(@routeDescription,routeDescription),
		departDate = ISNULL(@departDate,departDate),
		totalDays = ISNULL(@totalDays,totalDays)
	WHERE routeid = @id
END
GO
EXECUTE updatePlannedRoute_SP 'routeName test update','routeDescription test update','2016-12-08',14,1;
GO

-------------------------------------------------------------------------------------------PROC TO UPDATE TourBooking
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'updatePlannedRoute_SP') AND type in (N'P', N'PC'))
  DROP PROCEDURE updatePlannedRoute_SP
GO
CREATE PROCEDURE updatePlannedRoute_SP
				 @id INT,
				 @routeName VARCHAR(30),
				 @routeDescription VARCHAR(30),
				 @departDate DATETIME,
				 @totalDays INT
AS
BEGIN
	UPDATE PlannedRoute
	SET routeName = ISNULL(@routeName,routeName),
		routeDescription = ISNULL(@routeDescription,routeDescription),
		departDate = ISNULL(@departDate,departDate),
		totalDays = ISNULL(@totalDays,totalDays)
	WHERE routeid = @id
END
GO
EXECUTE updatePlannedRoute_SP 'routeName test update','routeDescription test update','2016-12-08',14,1;
GO
-----------------------------------------------------------------------------------------------------------VIEW ALL EMPLOYEES
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'employee_VIEW') AND type in (N'V'))
  DROP VIEW employee_VIEW
GO
CREATE VIEW employee_VIEW
AS
	SELECT * 
	FROM Employee
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'getEmployee_SP') AND type in (N'P', N'PC'))
  DROP PROCEDURE getEmployee_SP
GO
CREATE PROCEDURE getEmployee_SP
				 @name VARCHAR(30)
AS
BEGIN
	SELECT * 
	FROM employee_VIEW
	WHERE firstName = @name

END
GO
EXECUTE getEmployee_SP 'Dustin';
GO
