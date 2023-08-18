create view `customersOrder` as
select c.customerNumber, c.customerName, o.orderNumber, p.productCode, p.productDescription, p.buyPrice
from customers as c
inner join orders as o
on c.customerNumber =o.customerNumber
inner join orderdetails as d
on d.orderNumber = o.orderNumber
inner join products as p
on d.productCode =p.productCode;
;