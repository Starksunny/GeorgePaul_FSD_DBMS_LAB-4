-- Q3) Display the total number of customers based on gender who have placed orders of worth at least Rs.3000.

select count(OCC.cus_gender) as TotalNoOfCustomers, OCC.cus_gender FROM
(select OC.cus_id, OC.cus_gender, OC.cus_name from
(select o.*, c.cus_name, c.cus_gender from `order` o inner join customer c where o.cus_id = c.cus_id and o.ord_amount >= 3000) 
as OC group by OC.cus_id)
as OCC group by OCC.cus_gender;