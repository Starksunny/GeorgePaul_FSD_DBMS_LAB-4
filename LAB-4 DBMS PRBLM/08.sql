-- Q8) Display customer name and gender whose names start or end with character 'A'.
-- Dont use this
-- select * from customer;
-- update customer set cus_name = 'AAKASHA' where cus_id = 1;

select cus_name, cus_gender from customer where customer.cus_name like 'A%A';

select cus_name, cus_gender from customer where (customer.cus_name like 'A%' OR 
customer.cus_name like '%A');