-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

select * from books where title = 'Dracula';

select count(bookid) from loans where bookid in (12,60,73)
and returneddate is null;

select (select count(bookid) from books where title = 'Dracula') -
(select count(bookid) from loans where bookid in (12,60,73)
and returneddate is null) as numavailcopies;