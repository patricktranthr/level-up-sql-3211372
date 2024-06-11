-- Prepare a report of the library patrons
-- who have checked out the fewest books.

select count(loanid) as totalloans, firstname, lastname, email from loans
left join patrons on loans.patronid = patrons.patronid
group by patrons.patronid
order by totalloans
limit 9;