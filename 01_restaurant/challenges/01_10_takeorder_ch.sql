-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

insert into orders(customerid, orderdate)
values(70,'2022-09-20 14:00:00');

select * from orders where customerid=70
and orderdate = '2022-09-20 14:00:00';

insert into ordersdishes(orderid,dishid)
values(1001,20);

select * from ordersdishes od
join dishes d on d.dishid = od.dishid
where orderid=1001;

select sum(price) from dishes d
join ordersdishes od on d.dishid = od.dishid
where orderid=1001;