-- Q4) Display all the orders along with product name ordered by a customer having Customer_Id=2

select `order`.*, product.pro_name from `order`, supplier_pricing, product 
where 
	`order`.PRICING_ID = supplier_pricing.pricing_id and
    supplier_pricing.pro_id  = product.pro_id and
    `order`.cus_id = 2;
