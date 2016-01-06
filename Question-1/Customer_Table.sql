create table Customer
(
     ID int primary key,
     NAME varchar(255) not null,
     CUST_DESCRIPTION varchar(255) not null,
     EMAIL_ID varchar(320) unique,
     DOB date
);

insert into Customer values(100, 'User', 'Bangalore', 'user@gmail.com', '12-02-2013');
select * from Customer;