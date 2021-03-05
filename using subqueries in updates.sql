use sql_invoicing;

update invoices
set payment_total = invoice_total * 0.5, payment_date = due_date
where client_id = 
				(select client_id
				from clients
				where name = 'Myworks')

update invoices
set 
payment_total = invoice_total * 0.5, 
payment_date = due_date
where client_id  in  
				(select client_id
				from clients
				where state in ('NY', 'CA'))
                -- subquery with multiple records replace = with 'in'
                -- run select subquery before updating statement to avoid changing entire table
use sql_store;

update orders
set comments = 'gold customer'
where customer_id in 
			(select customer_id from customers
            where points > 3000)
	-- multiple primary key update and select statement then use in




