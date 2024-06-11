-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)

insert into customers (FirstName,LastName,Email)
select * from (values ('Sam','McAdams','smac@kinetecoinc.com'))
where not exists (select customerid from customers
where firstname = 'Sam' and lastname = 'McAdams');

insert into reservations(customerid, date, partysize)
values((select customerid from customers
where firstname = 'Sam' and lastname = 'McAdams'),
'2022-08-12 18:00:00', 5);

select * from reservations
order by reservationid desc limit 5;