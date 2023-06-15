use classicmodels;
delimiter //
create procedure getCustomerById(IN cusNum int(11))
begin
select * from customers where customerNumber = cusNum;
end
// delimiter ;

call getCustomerById(175);

delimiter //
create procedure getCustomersCountByCity(
in in_city varchar(50),
out total int
)
begin
	select count(customerNumber) into total from customers
    where city = in_city;
end
// delimiter ;

call getCustomersCountByCity("Lyon", @total);
select @total;

delimiter //
create procedure setCounter(
inout counter int,
in increment int
)
begin
	set counter = counter + increment;
end
// delimiter ;

set @counter2 = 1;
call setCounter(@counter2, 3);
call setCounter(@counter2, 2);
select @counter2;

