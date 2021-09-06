-- Welcome To AddressBook Database Queries

--UC1
CREATE DATABASE AddressBookService
select * from sys.databases
use AddressBookService

--UC2
create table AddressBookTable
	( Id int identity(1, 1) primary Key,
	FirstName varchar(50),
	LastName varchar(50),
	Address varchar(150),
	City varchar(25),
	State varchar(25),
	Zipcode varchar(6),
	PhoneNumber varchar(10),
	email varchar(30)	
	)

--UC3
insert into AddressBookTable(FirstName,lastname,address,city, state,zipcode,phonenumber,email)
VALUES
('Akash', 'Suchak', 'GUJ', 'GUJ', 'GUJ', '380001', '1234567890', 'email@exmple.com'),
('NEEL', 'Phatak', 'MH', 'MH', 'MH', '480001', '1234567891', 'email1@exmple.com'),
('RAVI', 'R', 'DL', 'DL', 'DL', '580001', '1234567892', 'email2@exmple.com'),
('MANISH', 'M', 'RJ', 'RJ', 'RJ', '680001', '1234567893', 'email3@exmple.com'),
('SHAHBUDDIN', 'S', 'HYD', 'HYD', 'TEL', '780001', '1234567894', 'email4@exmple.com')

--UC4
update AddressBookTable 
	set phonenumber = '9988776655' 
	where FirstName = 'AKASH' 

--UC5
delete from AddressBookTable 
	where FirstName = 'NEEL'

--UC6
select Firstname, CIty, State 
	from AddressBookTable
	where City = 'GUJ' 
	OR State = 'TEL'
