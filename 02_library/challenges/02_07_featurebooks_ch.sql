-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.

select title,barcode from books
where (bookid not in (select bookid from loans
where returneddate is null))
and published between 1890 and 1899
order by title;