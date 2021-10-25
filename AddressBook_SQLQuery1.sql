Create database AddressBookService;
use AddressBookService;

Create table AddressBookTable
(Id int identity(1,1) primary key, 
 FirstName varchar(100) Not null, 
 LastName varchar(100) Not null,
 Address varchar(100) Not null,
 City varchar(50) Not null,
 State varchar(50) Not null,
 ZipCode varchar(10) Not null,
 PhoneNumber varchar(12) Not null,
 EmailId varchar(50) Not null
 );


 