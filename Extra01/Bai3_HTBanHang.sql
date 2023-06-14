create database HTBanHang;

create table Product(
	Id int auto_increment primary key,
    Name varchar(50) not null,
    Price int not null,
    Quantity int
);

create table Customer(
	Id int auto_increment primary key,
    Name varchar(20) not null,
    Address varchar(50),
    Contact varchar(50)
);

create table Receipt(
	Id int auto_increment primary key,
    Date datetime,
    CustomerId int not null,
    TotalPrice int,
    foreign key (CustomerId) references Customer(Id)
);

create table ReceiptDetail(
	ReceiptId int,
    ProductId int,
    primary key (ReceiptId, ProductId),
    foreign key (ReceiptId) references Receipt(Id),
    foreign key (ProductId) references Product(Id)
);