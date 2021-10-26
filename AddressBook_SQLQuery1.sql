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

Alter Table AddressBookTable
Add AddressBookName varchar(50),Type varchar(20);

Update AddressBookTable 
Set AddressBookName = 'Book1', Type = 'Family'
Where City = 'Bangalore';

Update AddressBookTable 
Set AddressBookName = 'Book2', Type = 'Friends'
Where City = 'Poone';

Update AddressBookTable 
Set AddressBookName = 'Book3', Type = 'Profession'
Where City = 'Chennai';

Select count(Type) from AddressBookTable where Type = 'Family';
Select count(Type) from AddressBookTable where Type = 'Friends';
Select count(Type) from AddressBookTable where Type = 'Profession';

Insert Into AddressBookTable
Values
('Raju','Ch','Vijay Nagar','Gadag','Karnataka','582120','9620658742','Raju@gmail.com','Book2','Friends'),
('Siddu','BH','Vidya Nagar','Hubli','Karnataka','582456','9535666678','Siddu@gmail.com','Book1','Family');

Select * from AddressBookTable;

Create Table Person
(
Person_Id int identity(1,1) Primary key Not null,
FirstName varchar(100) Not null,
LastName varchar(100) Not null,
Emailid varchar(50) Not null,
PhoneNumber varchar(15) Not null
);

Select * from Person
Insert Into Person
Values ('Suresh','Roy','Suresh@gmail.com','1256789425', 456123);

Create Table Address
(
Person_Id int Foreign Key References Person(Person_Id),
Zip int Primary Key,
City varchar(50),
State varchar(50)
);

Insert Into Address
Values 
(3,582122, 'Bangalore', 'Karnataka'),
(2,789456, 'Chennai', 'Tamil Nadu');

Select * from Address;

Create Table AddressBook
(
Book_Id int Primary Key,
Person_Id int Foreign Key References Person(Person_Id),
BookName varchar(20),
BookType varchar(20)
);

Insert into AddressBook
Values 
(113, 1, 'FriendsBook','Firends'),
(112, 2, 'FamilyBook', 'Family'); 

Select * from AddressBook;

Create Table Person_AddressBook
(
Person_Id int Foreign Key References Person(Person_Id),
Book_Id int Foreign Key References AddressBook(Book_Id)
);

Insert Into Person_AddressBook
Values (3, 113),
	   (2, 112);

Select * from Person_AddressBook;

Alter Table Person Add Zip varchar(15);

Select P.FirstName as Name, A.City from Person P Inner Join Address A On A.Person_Id = P.Person_Id Where A.City = 'Chennai';

Select A.City, COUNT(City) as Size From Address A Inner join Person P on A.Person_Id = P.Person_Id Group by City; 

Select P.FirstName as Name, A.City from Person P Inner Join Address A On A.Person_Id = P.Person_Id Where A.City = 'Bangalore' Order By P.FirstName;

Select AB.BookName, Count(BookType) as Size from Person P Inner Join AddressBook AB on P.Person_Id = AB.Person_Id Group By BookName;   