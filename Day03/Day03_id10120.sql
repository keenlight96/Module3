CREATE DATABASE Day02_QuanLySinhVien;
CREATE TABLE Class(
	ClassID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ClassName varchar(60) NOT NULL,
    StartDate datetime,
    Status bit
);

CREATE TABLE Student(
	StudentID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    StudentName varchar(30) NOT NULL,
    Address varchar(50),
    Phone varchar(20),
    Status bit,
    ClassID int NOT NULL,
    FOREIGN KEY (ClassID) REFERENCES Class(ClassID)
);

CREATE TABLE Subject(
	SubID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    SubName varchar(30) NOT NULL,
    Credit tinyint NOT NULL DEFAULT 1 CHECK (Credit >= 1),
    Status bit DEFAULT 1
);

CREATE TABLE Mark(
	MarkID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    SubID int NOT NULL,
    StudentID int NOT NULL,
    Mark float DEFAULT 0 CHECK (Mark >=0 AND Mark <= 100),
    ExamTimes tinyint DEFAULT 1,
    UNIQUE (SubID, StudentID),
    FOREIGN KEY (SubID) REFERENCES Subject(SubID),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);

insert into Class(ClassName, StartDate, Status) values 
("A1","2008-12-20",1),
("A2","2008-12-22",1),
("B3",current_date(),0);

insert into Student (StudentName, Address, Phone, Status, ClassID) values
("Hung", "Ha Noi", "0912113113", 1, 1),
("Hoa", "Hai Phong", "", 1, 1),
("Manh", "HCM", "0123123123", 0, 2);

insert into Subject (SubName, Credit, Status) values
("CF", 5, 1),
("C", 6, 1),
("HDJ", 5, 1),
("RDBMS", 10, 1);

insert into Mark (SubID, StudentID, Mark, ExamTimes) values
(1, 1, 8, 1),
(1, 2, 10, 2),
(2, 1, 12, 1);



