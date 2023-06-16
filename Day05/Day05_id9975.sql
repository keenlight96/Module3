create database day05_products;
use day05_products;

create table Products(
	Id int primary key,
    ProductCode varchar(20),
	ProductName varchar(50),
    ProductPrice float,
    ProductAmount int,
    ProductDescription varchar(50),
    ProductStatus bit
);
drop table Products;

insert into Products values
(1, "0gasf1", "00fdfhdf01", 10, 100, "", 1),
(2, "asfs02", "00bnnfa02", 20, 200, "", 0),
(3, "0faga3", "0xnfad003", 30, 300, "", 1),
(4, "0s4", "00cxbbx04", 40, 400, "", 1),
(5, "fs05", "000xbnsa5", 50, 500, "", 1),
(6, "0af6", "00xxdv06", 60, 600, "", 1),
(7, "fsfag07", "00asfgb07", 70, 700, "", 1),
(8, "0ncn8", "000cneytky8", 80, 800, "", 1),
(9, "0nnsd9", "00ituwe09", 90, 900, "", 1);

create unique index codes on Products(ProductCode);
create unique index codes2 on Products(ProductCode);
alter table Products add index codes(ProductCode);
drop index codes on Products;

create unique index Name_Price on Products(ProductName, ProductPrice);

explain select ProductCode from Products;
explain select ProductName, ProductPrice from Products;

select * from Products;


create view product_view as
select ProductCode, ProductName, ProductPrice, ProductStatus from Products;

select * from product_view;
update product_view 
set 
	ProductCode = "03",
    ProductName = "0003"
where ProductPrice = 30;

create or replace view product_view as 
select ProductCode, ProductName from Products;

drop view product_view;


delimiter //
create procedure show_all()
begin
	select * from Products;
end
// delimiter ;

call show_all();

delimiter //
create procedure add_product(
	in product int,
    in productCode varchar(20),
    in productName varchar(20),
    in productPrice float,
    in productAmount int,
    in productStatus bit)
begin
	insert into Products values
    (product, productCode, productName, productPrice, productAmount, "", productStatus);
end
// delimiter ;

call add_product(12, "asfasa", "asdas", 24, 1, 1);

delimiter //
create procedure update_product(
	in id int,
    in productCode varchar(20),
    in productName varchar(20),
    in productPrice float,
    in productAmount int,
    in productStatus bit)
begin
	update Products
    set 
		productCode = productCode,
        productName = productName,
        productPrice = productPrice,
        productAmount = productAmount,
        productStatus = productStatus
    where products.Id = id;
end
// delimiter ;

drop procedure update_product;
select * from products;
call update_product (7, "1412412123", "12312", 1.4, 2, 0);


delimiter //
create procedure delete_product(in id int)
begin
    delete from Products where Products.id = id;
end
// delimiter ;

drop procedure delete_product;
call delete_product(7);
select * from products;

