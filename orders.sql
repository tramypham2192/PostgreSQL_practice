-- create table orders 
-- (
-- 	order_id serial primary key,
-- 	person_id serial,
-- 	product_name varchar(50),
-- 	product_price int,
-- 	quantity int
-- );

-- insert into orders (person_id, product_name, product_price, quantity)
-- values 
-- (1, 'burger', 6, 3),
-- (3, 'pizza', 8, 2),
-- (1, 'chicken nuggets', 10, 1),
-- (1, 'french fries', 4, 6),
-- (3, 'juice', 2, 10);

select * from orders;

-- Calculate the total number of products ordered.
select sum(quantity)
from orders;

-- Calculate the total order price for all orders.
select sum(product_price)
from orders;
-- Calculate the total order price by a single person_id
select sum(product_price)
from orders
group by person_id;
