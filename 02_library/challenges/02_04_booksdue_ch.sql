-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.

select duedate,title,firstname,email from loans
join books on loans.bookid = books.bookid
join patrons on loans.patronid = patrons.patronid
where duedate = '2022-07-13' and returneddate is null;