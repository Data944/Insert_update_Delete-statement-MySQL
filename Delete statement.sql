Delete from invoices
-- deletes everything from table
Delete from invoices
where client_id = 1
-- use where statement to delete record from row instead of entire table

Delete from invoices
where client_id = ( select* from clients
					where name = 'Myworks')
		-- can also delete from subquery


