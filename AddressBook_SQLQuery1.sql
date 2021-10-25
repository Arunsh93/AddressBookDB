Create database AddressBookService;
use AddressBookService;

Create table AddressBookTable
(FirstName varchar(100) Not null, 
 LastName varchar(100) Not null,
 Address varchar(100) not null,
 City varchar(50) null,
 State varchar(50) null,
 ZipCode int null,
 PhoneNumber int null,
 EmailId varchar(50) null);
