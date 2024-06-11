-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

select count(o.orderid) as totalorders,
c.firstname,
c.lastname,
c.email
from orders o
join customers c on o.customerid = c.customerid
group by o.customerid
order by totalorders desc
limit 15;