create database htvemaybay;

create table Flight(
	FlightId varchar(20) primary key,
    Date date not null,
    Departure varchar(50) not null,
    Destination varchar(50) not null,
    StartTime datetime not null,
    EndTime datetime
);

create table Customer(
	CustomerId varchar(20) primary key,
    Name varchar(20) not null,
    IdCard varchar(20) not null,
    Contact varchar(50)
);

create table Ticket(
	TicketId varchar(20) primary key,
    FlightId varchar(20),
    CustomerId varchar(20),
    foreign key (FlightId) references Flight(FlightId),
    foreign key (CustomerId) references Customer(CustomerId)
);

