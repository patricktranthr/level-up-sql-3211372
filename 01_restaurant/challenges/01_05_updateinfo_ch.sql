-- Update a customer's contact information.

-- Taylor Jenkins, of 27170 6th Ave., Washington, DC,
-- has moved to 74 Pine St., New York, NY.

select * from customers
where customerid = 26;

update customers set 
Address='74 Pine St.', City='New York', State='NY'
where customerid = 26;