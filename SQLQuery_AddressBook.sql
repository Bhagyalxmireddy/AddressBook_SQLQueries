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
UPDATE Address_Book set PhoneNumber = '8520147963' WHERE FirstName = 'Sravani';
INSERT INTO Address_Book(FirstName, LastName,Address,City,State,Zip, PhoneNumber, Email)
VALUES ('Tejaswini', 'Kulkarni','Ngkl','Mumbai','MR','500002','9874102563','Teja123@gmail.com');
INSERT INTO Address_Book(FirstName, LastName,Address,City,State,Zip, PhoneNumber, Email)
VALUES ('BhagyaLaxmi', 'Reddy','Prp','MBNR','TS','500003','8464096496','Bhagyalaxmi@gmail.com');
INSERT INTO Address_Book(FirstName, LastName,Address,City,State,Zip, PhoneNumber, Email)
VALUES ('SriCharitha', 'Reddy','jcl','Klky','TS','500004','8464096413','Sricharitha@gmail.com'),
			('Rishitha','Reddy','BNReddy','Emjal','UP','500005','9874563210','rishitha123@gmail.com');

			

