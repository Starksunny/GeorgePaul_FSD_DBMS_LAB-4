-- Q5) Display the Supplier details of who is supplying more than one product.

select supp_id, count(supp_id) from supplier_pricing group by supp_id;