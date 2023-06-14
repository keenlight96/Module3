create database HTThuVien;

create table Author(
	Id int auto_increment primary key,
    Name varchar(20) not null,
    Country varchar(20)
);

create table Book(
	Id int auto_increment primary key,
    Name varchar(20) not null,
    AuthorId int not null,
    Category varchar(20),
    foreign key (AuthorId) references Author(Id)
);

create table Customer(
	Id int auto_increment primary key,
    Name varchar(20) not null,
    Address varchar(50),
    Contact varchar(50)
);

create table BorrowInfo(
	Id int auto_increment primary key,
    CustomerId int not null,
    BookId int not null,
    foreign key (CustomerId) references Customer(Id),
    foreign key (BookId) references Book(Id)
);