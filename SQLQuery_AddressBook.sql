--UC1-Creating DB
create Database Address_Book
use Address_Book

--UC2-Creating Table
CREATE TABLE Address_Book (
    ID int  IDENTITY(1,1) primary key,
    FirstName varchar(50),
	LastName varchar(50),
	Address varchar(50),
	City varchar(50),
	State varchar(50),
	Zip varchar(6),
	PhoneNumber varchar(10),
	Email varchar(50),  
);
select * from Address_Book;

--UC3-Inserting the values Into Table
INSERT INTO Address_Book(FirstName, LastName,Address,City,State,Zip,Email)
VALUES ('Sravani', 'Sabbisetti','gandhiChock','Vijayawada','AP','500001','Sravani11@gmail.com');
INSERT INTO Address_Book(FirstName, LastName,Address,City,State,Zip,PhoneNumber,Email)
VALUES ('Bala', 'Myakala','TKr','Vijaywada','AP','500001','7801092129','Bala@gmail.com');
UPDATE Address_Book set City = 'Vijayawada' WHERE FirstName = 'Bala';
UPDATE Address_Book set PhoneNumber = '8520147963' WHERE FirstName = 'Sravani';
INSERT INTO Address_Book(FirstName, LastName,Address,City,State,Zip, PhoneNumber, Email)
VALUES ('Tejaswini', 'Kulkarni','Ngkl','Mumbai','MR','500002','9874102563','Teja123@gmail.com');
INSERT INTO Address_Book(FirstName, LastName,Address,City,State,Zip, PhoneNumber, Email)
VALUES ('BhagyaLaxmi', 'Reddy','Prp','MBNR','TS','500003','8464096496','Bhagyalaxmi@gmail.com');
INSERT INTO Address_Book(FirstName, LastName,Address,City,State,Zip, PhoneNumber, Email)
VALUES ('SriCharitha', 'Reddy','jcl','Klky','TS','500004','8464096413','Sricharitha@gmail.com'),
			('Rishitha','Reddy','BNReddy','Emjal','UP','500005','9874563210','rishitha123@gmail.com');

--UC4-Editing The Details

UPDATE Address_Book set Address = 'Thimmajipet' WHERE FirstName = 'Bhagyalaxmi';

--UC5-Deleting The Person

DELETE FROM Address_Book WHERE FirstName = 'SriCharitha';


--UC6-Retreving The Persons By City OR State 
Select * From Address_Book WHERE City = 'Emjal' or State = 'AP';

--UC7-Ability To get the count by city and state
select COUNT(State) From Address_Book WHERE City = 'Emjal' And State ='UP';

--UC8-Retrieve sortedBy alphabetically By Name For City
select * From Address_Book Where State = 'AP' ORDER BY FirstName;
