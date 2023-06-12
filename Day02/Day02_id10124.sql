create database Day02_QuanLyBanHang;
create table Customer(
	cID int not null primary key,
    cName varchar(50),
    cAge int
);

create table Order1(
	oID int not null primary key,
    cID int not null,
    oDate datetime,
    oTotalPrice int not null,
    foreign key (cID) references Customer(cID)
);

create table Product(
	pID int not null primary key,
    pName varchar(50),
    pPrice int not null
);

create table OrderDetail(
	oID int not null,
    pID int not null,
    odQty int not null,
    primary key (oID, pID),
    foreign key (oID) references Order1(oID),
    foreign key (pID) references Product (pID)
);