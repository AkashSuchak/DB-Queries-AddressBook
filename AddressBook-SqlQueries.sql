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
