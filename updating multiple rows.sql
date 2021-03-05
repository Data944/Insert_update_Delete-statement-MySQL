use sql_invoicing;

update invoices
set payment_total = invoice_total * 0.5, payment_date = due_date
where client_id = 3

update invoices
set payment_total = invoice_total * 0.5, payment_date = due_date
where client_id in (1,5)

update invoices
set payment_total = invoice_total * 0.5, payment_date = due_date
--- updates whole table

use sql_store

update customers
set points = points + 50
where birth_date < '1990-01-01'





