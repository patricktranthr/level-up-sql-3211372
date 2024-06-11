-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

-- Report 2: Show the five books that have been
-- checked out the most.

select published, count(distinct title) as numbooks
from books
group by published
order by numbooks desc;

select title, count(loanid) as numloans from loans
join books on loans.bookid = books.bookid
group by title
order by numloans desc
limit 5;