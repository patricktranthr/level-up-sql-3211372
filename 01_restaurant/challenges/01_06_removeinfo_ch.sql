-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.
select * from customers where firstname = 'Norby';

select * from reservations where customerid = 64
and date > '2022-07-24';

delete from reservations where reservationid = 2000;