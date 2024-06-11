-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

select * from reservations r
join customers c on c.customerid = r.customerid
where r.date like '%06-14%' and
r.partysize = 4 and
c.lastname like 'St%';