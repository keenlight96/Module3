create database HTQuanLyNhanSu;

create table Employee(
	Id int auto_increment primary key,
    Name varchar(20) not null,
    Birthday date,
    Address varchar(50),
    Salary int,
    DepartmentId int
);

create table Department(
	Id int auto_increment primary key,
    Name varchar(30),
    ManagerId int,
    foreign key (ManagerId) references Employee(Id)
);

alter table Employee
add foreign key (DepartmentId) references Department(Id);

create table Project(
	Id int auto_increment primary key,
    Name varchar(30) not null,
    Description varchar(50)
);

create table Assignment(
	EmployeeId int,
    ProjectId int,
    primary key (EmployeeId, ProjectId),
    foreign key (EmployeeId) references Employee(Id),
    foreign key (ProjectId) references Project(Id)
);

