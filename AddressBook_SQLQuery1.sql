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

 Insert Into AddressBookTable
 Values
 ('Muttu','Gotur','Rajaji Nagar','Bangalore','Karnataka','582120','9620692457','Arun@gmail.com'),
 ('Arpita','Hosur','Vijay Nagar','Bangalore','Karnataka','580821','9535306678','Nagu@gmail.com'),
 ('Rahul','H','Jaya Nagar','Bangalore','Karnataka','582564','956784213','Manju@gmail.com');
 
 
 Update AddressBookTable
 Set City = 'Tisuram', State = 'Kerala'
 Where FirstName = 'Nagu';

Delete From AddressBookTable Where FirstName = 'Manju';
  
Select * from AddressBookTable Where City = 'Poone' And State = 'Maharashtra';

Select Count(FirstName) From AddressBookTable Where City = 'Bangalore' And State = 'Karnataka';

Select * from AddressBookTable Where City = 'Bangalore' Order By FirstName ASC;