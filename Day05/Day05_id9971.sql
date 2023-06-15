use classicmodels;

explain select * from customers where customerName = "Land of Toys Inc.";

alter table customers add index idx_customerName(customerName);
alter table customers drop index idx_customerName;

explain select * from customers where contactFirstName = "Jean" or contactFirstName = "King";

alter table customers add index idx_fullName(contactFirstName, contactLastName);
alter table customers drop index idx_fullName;