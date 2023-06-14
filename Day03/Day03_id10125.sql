use day02_quanlybanhang;

insert into Customer values
(1, "Minh Quan", 10),
(2, "Ngoc Oanh", 20),
(3, "Hong Ha", 50);

insert into Order1 values
(1, 1, "2006-3-21", 0),
(2, 2, "2006-3-23", 0),
(3, 1, "2006-3-16", 0);

insert into Product values
(1, "May giat", 3),
(2, "Tu lanh", 5),
(3, "Dieu hoa", 7),
(4, "Quat", 1),
(5, "Bep dien", 2);

insert into OrderDetail value
(1, 1, 3),
(1, 3, 7),
(1, 4, 2),
(2, 1, 1),
(3, 1, 8),
(2, 5, 4),
(2, 3, 3);

select oID, oDate, oTotalPrice from Order1;

select c.cID, c.cName, c.cAge, p.pID, p.pName, p.pPrice from Order1 o1
join OrderDetail o on o1.oID = o.oID
join Product p on o.pID = p.pID
join Customer c on o1.cID = c.cID;

select c.cID, c.cName, c.cAge from Customer c
left join Order1 o1 on c.cID = o1.cID
where o1.cID is null;

select o1.oID, o1.oDate, TotalPrice from Order1 o1
join (
	select o.oID, p.pPrice * o.odQty as TotalPrice from OrderDetail o
    join Product p on o.pID = p.pID
) temp on temp.oID = o1.oID;

select o1.oID, o1.oDate, TotalPrice from Order1 o1
join (
	select o.oID, SUM(p.pPrice * o.odQty) as TotalPrice from OrderDetail o
    join Product p on o.pID = p.pID
    group by o.oID
) temp on temp.oID = o1.oID;

SELECT 
    o1.oID, o1.oDate, SUM(p.pPrice * o.odQty) AS TotalPrice
FROM
    Order1 o1
        JOIN
    OrderDetail o ON o.oID = o1.oID
        JOIN
    Product p ON p.pID = o.pID
GROUP BY o1.oID;


