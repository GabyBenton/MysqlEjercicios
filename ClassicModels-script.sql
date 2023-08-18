use classicmodels;
create view customersOrder as


select * from customers;
select * from orders;
select * from orderdetails;
select * from products;
-- c.customerNumber, c.customerName, o.orderNumber, d.productsCode, d.orderNumber,
select c.customerNumber, c.customerName, o.orderNumber
from customers as c
inner join orders as o
on c.customerNumber =o.customerNumber;

select d.orderNumber, p.productCode, p.productDescription, p.buyPrice
from orderdetails as d
inner join products as p
on d.productCode =p.productCode;


select c.customerNumber, c.customerName, o.orderNumber, p.productCode, p.productDescription, p.buyPrice
from customers as c
inner join orders as o
on c.customerNumber =o.customerNumber
inner join orderdetails as d
on d.orderNumber = o.orderNumber
inner join products as p
on d.productCode =p.productCode;
