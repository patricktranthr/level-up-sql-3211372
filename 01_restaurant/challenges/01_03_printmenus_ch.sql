-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
-- Create a report showing appetizers and beverages.
-- Create a report with all items except beverages.

select type, name, price, description 
from dishes 
order by price;

select type, name, price, description
from dishes
where type in ('Appetizer','Beverage')
order by type;

select type, name, price, description
from dishes
where type != 'Beverage'
order by type;