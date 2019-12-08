CREATE TABLE Meals (
MealID integer,
MealDesc varchar (80) 
);

INSERT INTO Meals
(MealID, MealDesc)
Values
('21011','Chicken Nuggets, Glazed Sweet Potatoes, Chilled Mixed Fruit, Choice of Milk'),
('21012','Bean Nachos, Corn Whole Kernel, Apple Slices w/ Cinnamon, Choice of Milk'),
('21013','PBJ w/ Cheesestick, Fresh Mango, Fresh Cucumber w/ Dip, Choice of Milk'),
('21014','Chili Beef w/ Beans, Cornbread, Chilled Pears, Choice of Milk'),
('21015','Deli Sandwich w/ Lettuce & Tomato, Mini Carrots, Fresh Grapes, Choice of Milk');

SELECT *
FROM Meals;


CREATE TABLE Payments (
PaymentID integer,
PayMethod varchar (30),
PayAmount integer,
PayCompDate date,
PayProcessor varchar(30),
PayDesc varchar(30),
FamilyID integer,
StudentID int 
);

INSERT INTO Payments
(PaymentID, PayMethod, PayAmount, PayCompDate, PayProcessor, PayDesc, FamilyID, StudentID)
Values
('991251','Credit Card', '15', '2019-11-22','MasterCard','Payment for full week of meal','111111','123450'),
('991252','Cash', '1', '2019-12-02','Register', 'Payment for the days meal','111112','123451'),
('991253','Credit Card', '60', '2019-12-02', 'Visa', 'Payment for November meal','111113','123452'),
('991254',null, null, null, null, null, '111114','123453'),
('991255','Credit Card', '15' ,'2019-11-22', 'MasterCard', 'Payment for full week of meal', '111111','123454'),
('991256','Cash', '2' ,'2019-11-4', 'Register','Payment for previous week meal', '111115','123455');


SELECT * FROM Payments;


CREATE TABLE Students (
StudentID integer,
StudentGrade int,
LastName varchar(30),
FirstName varchar(30),
FamilyID int,
TypeID int
);

INSERT INTO Students
(StudentID, StudentGrade, LastName, FirstName, FamilyID, TypeID)
Values
('123450','1', 'Miles', 'Maddy','111111','3'),
('123451','1', 'Hodges', 'Trinity','111112', '2'),
('123452','2', 'Berry', 'Connor', '111113', '3'),
('123453','4', 'Boyle', 'Jon', '111114', '1'),
('123454','7', 'Miles' ,'Emily', '111111', '3'),
('123455','8', 'Smith' ,'Doe', '111115','2');

SELECT * FROM Students;


CREATE TABLE Transactions (
TransID integer,
TransDate date,
TransTime time,
TransTotal integer,
MealID int,
StudentID int 
);

INSERT INTO Transactions
(TransID, TransDate, TransTime, TransTotal, MealID, StudentID)
Values
('7851231','2019-11-18','11:01:33', '1', '21011','123450'),
('7851232','2019-11-18','11:02:15', '1', '21011','123451'),
('7851234','2019-11-18','11:30:00', '1', '21011','123453'),
('7851235','2019-11-18','11:45:12', '2', '21011','123453'),
('7851233','2019-11-19','11:02:45', '2', '21012', '123450'),
('7851234','2019-11-19','11:04','2', '21012', '123451'),
('7851241','2019-11-19','11:17:33', '3', '21012', '123453'),
('7851235','2019-11-20','11:00:12', '3' ,'21013', '123450'),
('7851236','2019-11-20','11:00:45', '3' ,'21013', '123451'),
('7851237', '2019-11-20','11:05:14','4',21013,'123451'),
('7851248','2019-11-20','11:17:12','4','21013','123453'),
('7851249','2019-11-20','11:25:20','5','21013','123453'),
('7851238', '2019-11-21','11:03:54','4','21014','123450'),
('7851239','2019-11-21','11:04:03','5',21014,'123451'),
('7851255','2019-11-21','11:11:11','6','21014','123453'),
('7851240','2019-11-22','11:01:33','5','21015','123450'),
('7851250','2019-11-22','11:03:12','6', '21015', '123451'),
('7851261','2019-11-22','11:17:10','7','21015','123453')
;
SELECT * FROM Transactions;


create table Families
(FamilyID integer,
LastName varchar(30),
FirstName varchar(30),
Address varchar(80),
Phone varchar(30),
Email varchar(80) );

insert into Families
(FamilyID, LastName, FirstName, Address, Phone, Email)
Values
('111111', 'Miles', 'Michelle', '14444 Grand Blvd. Kansas City, MO 64110', '816-209-3351', 'michellemiles1@gmail.com'),
('111112', 'Hodges', 'Harlan', '11482 Pineview Crossing Dr. Kansas City, MO 64110', '816-214-1060', 'harlan3@gmail.com'),
('111113', 'Berry', 'Leslie', '303 Wildbrier Dr. Kansas City, MO 64110', '816-420-6969', 'LBerry303@att.net'),
('111114', 'Boyle', 'Craig', '7881 Tracy Ave. Kansas City, MO 64110', '913-336-0414', 'bigboyle24@icloud.com'),
('111115', 'Smith', 'Darren', '51152 Virginia Ave. Kansas City, MO 64110', '913-208-7899', 'smithdaren@company.net');

select * from Families;

create table MealType
(TypeID int,
Price Decimal (3,2) );

insert into MealType
(TypeID, Price)
values
('1', '0'),
('2', '0.40'),
('3', '3.00');

select * from MealType;