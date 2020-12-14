create Database Address_Book
use Address_Book

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
