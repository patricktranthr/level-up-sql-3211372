-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

select * from customers WHERE
firstname = 'Cleo' and lastname = 'Goldwater';

select dishid from dishes WHERE
name = 'Quinoa Salmon Salad';

update customers
set favoritedish = (select dishid from dishes WHERE
name = 'Quinoa Salmon Salad')
where firstname = 'Cleo' and lastname = 'Goldwater';