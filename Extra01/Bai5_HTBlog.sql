create database HTBlog;

create table Author(
	Id int auto_increment primary key,
    Name varchar(20) not null,
    Contact varchar(50)
);

create table Article(
	Id int auto_increment primary key,
    Title varchar(30) not null,
    Content varchar(255),
    Date date,
	AuthorId int,
    foreign key (AuthorId) references Author(Id)
);

create table Reader(
	Id int auto_increment primary key,
    Name varchar(20) not null,
    Contact varchar(50)
);

create table Reading(
	ArticleId int,
    ReaderId int,
    primary key (ArticleId, ReaderId),
    foreign key (ArticleId) references Article(Id),
    foreign key (ReaderId) references Reader(Id)
);