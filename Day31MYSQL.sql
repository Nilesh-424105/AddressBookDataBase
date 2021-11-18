# UC1:-Ability to Create a Address Book Service DB
show databases;
create database addressbook_service;
show databases;

# UC2:-Ability to create a AddressBook Table with first and laste names, address, city, state, zip, phone number and email as its attributes
 use addressbook_service;
 select database();
 create table addressbook 
 (
 firstName varchar(150) NOT NULL,
 lastName varchar(150) NOT NULL,
 address varchar(150) NOT NULL,
 city varchar(150) NOT NULL,
 state varchar(150) NOT NULL,
 zip varchar(150) NOT NULL,
 mobileNumber varchar(150) NOT NULL,
 email varchar(150) NOT NULL
 );
 describe addressbook;
 
 # UC3:- Ability to insert new contact to AddressBook
 insert into addressbook (firstName, lastName, address, city, state, zip, mobileNumber, email)values
						 ('Nilesh', 'Kotkar', '3/343', 'jalgaon', 'maharastra', '424105', '8766483622', 'nileshkotkar1996@gmail.com'),
                         ('Dany', 'zago', '2/155', 'ranchi', 'Jharkhand', '515765', '8564526525', 'dany@gmail.com'),
						 ('Mark', 'jain', '4/521', 'bhopal', 'MP', '424532', '7569852365', 'markjain56@gmail.com');
select * from addressbook;

# UC4:- Edit Contact Details of Person Using Name
select * from addressbook;
update addressbook set city = 'indore' where firstName = 'Mark';
select * from addressbook;
update addressbook set lastName = 'kago' where firstName = 'Dany';
select * from addressbook;

# UC5:- Delete a Person using persons name
select * from addressbook;
delete from addressbook where firstName = 'Mark';
select * from addressbook;

# UC6:- Ability to Retrive Person belonging to a City or State from the Address Book
select * from addressbook;
select * from addressbook where city = 'ranchi' or state = 'Jharkhand';

#UC7:- Ability to understand the size of addressbook by City and State
select * from addressbook;
select state, count(state) from addressbook group by state;
select city, count(city) from addressbook group by city;

# UC8:- Ability to retrive entries sorted alphabetically by Person's name for a given city
select * from addrebook order by firstName;
select * from addressbook where city = 'kadapa' order by firstname;

#UC9:- Ability to identify each Address Book with name and Type
select * from addressbook;
alter table addressbook add type varchar(150) not null after lastname;
select * from addressbook;
update addressbook set type = 'family' where firstName = 'Nilesh' or firstName = 'Dany';
select * from addressbook;
update addressbook set type = 'friends' where firstName = 'Mark';
select * from addressbook;
update addressbook set type = 'profession' where firstName = 'teja';
select * from addressbook;
alter table addressbook add addressBookname varchar(150) not null after firstName;
select * from addressbook;
update addressbook set addressBookname = 'ad1' where firstName = 'teja' or firstName = 'Dany';
select * from addressbook;
update addressbook set addressBookname = 'ad2' where firstName = 'Dany' or firstName = 'Nilesh';
select * from addressbook;

#UC10:- Ability to get number of contact persons i.e. count by type
select * from addressbook;
select type,count(type) from addressbook group by type;

#UC11:- Ability to add person to both Friend and Family
insert into addressbook (firstname, addressBookname, lastname, type, address, city, state, zip, mobilenumber, email) values
     ('chitti','ad1','def','friends','12-34','kurnool','ts','435678','8765432109','abc@gia.com');
select * from addressbook;
insert into addressbook (firstname, addressBookname, lastname, type, address, city, state, zip, mobilenumber, email) values
     ('chitti','ad1','def','family','12-34','kurnool','ts','435678','8765432109','abc@gia.com');
select * from addressbook;


