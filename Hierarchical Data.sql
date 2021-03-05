Insert into orders
(customer_id, 
order_date,
 status)
values
(1, '2019-01-03', 1)
-- order = parent table

Select last_insert_id;
-- generate id created by MYSQL default when inserting new row
-- can be used to enter data pertinent to child table

insert into order_items
values (last_insert_id (), 1, 1, 2.95),
       (last_insert_id(), 2,1,3.95)
	-- order-items = child table