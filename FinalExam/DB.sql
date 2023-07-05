drop database module3finalexam;
create database module3finalexam;
use module3finalexam;

create table Classroom (
	classId int auto_increment primary key,
    classroom varchar(50) unique
);

create table Student (
	studentId int auto_increment primary key,
    name varchar(50),
    email varchar(50),
    dateOfBirth date,
    address varchar(50),
    phoneNumber varchar(20),
    classId int,
    foreign key (classId) references Classroom(classId)
);

