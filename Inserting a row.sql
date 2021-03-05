-- method 1
Insert into customers
values 
( Default, 
'John',
 'Smith', 
 '1990-01-01',
 null,
 'address',
 'city',
 'CA',
 Default)
-- default allow MySQL to assign default primary key #
-- null = default

-- method 2
Insert into customers
(first_name,
last_name,
birth_date,
address,
city,
state)
values 
( 'John',
 'Smith', 
 '1990-01-01',
 'address',
 'city',
 'CA')