Create table orders_archived as
select * from orders;
-- must supply value for order id as copied table no longer auto increment column

Insert into orders_archived
select * from orders
where order_date < '2019-01-01'

use sql_invoicing;

Create table invoices_archived as
select 
i.invoice_id,
i.number,
c.name as client,
i.invoice_total,
i.payment_total,
i.invoice_date,
i.due_date,
i.payment_date
from invoices i
join clients c
on i.client_id= c.client_id
-- or using (client_id)
where payment_date is not null
