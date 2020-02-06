USE[TicketBooking];
--Create table UserDetails(UserId int identity(1,1),FirstName varchar(50)not null,LastName varchar(50),Gender varchar(10)not null,Age int,Address varchar(50)not null,City varchar(20)not null,State varchar(20)not null,PinCode int not null,Email varchar(100)not null,Password varchar(100)not null);
--Insert Into UserDetails(FirstName,LastName,Gender,Age,Address,City,State,PinCode,Email,Password)Values('Rohini','Venkatachalam','Female','20','268 A','Coimbatore','Tamil Nadu',641653,'rohini@gmail.com','rohini');
select * from UserDetails;