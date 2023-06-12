create database Day02_QuanLyDiemThi;
create table hocsinh(
	mahs varchar(20) primary key,
    tenhs varchar(50),
    ngaysinh datetime,
    lop varchar(20),
    gt varchar(20)
);

create table giaovien(
	magv varchar(20) primary key,
    tengv varchar(50),
    sdt varchar(10)
);

create table monhoc(
	mamh varchar(20) primary key,
    tenmh varchar(20)
);

create table bangdiem(
	mahs varchar(20),
    mamh varchar(20),
	diemthi int,
    ngaykt datetime,
    primary key (mahs, mamh),
    foreign key (mahs) references hocsinh(mahs),
    foreign key (mamh) references monhoc(mamh)
);

alter table monhoc add magv varchar(20);
alter table monhoc add constraint fk_magv foreign key (magv) references giaovien(magv);