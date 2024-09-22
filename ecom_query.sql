select * from sales
	
select * from customer
	
select * from product

--dim-customer--
	
create table dim_customer as 
select customer_id,customer_name,segment,age,postal_code 
from customer

select * from dim_customer

--sub-dim-region--

create table sub_dim_region as 
select distinct postal_code , city , state , region from customer

select * from sub_dim_region

--sub_dim_product_category--

alter table product add column category_id Serial ;

create table sub_dim_product_category as 
select category_id , category , sub_category from product

select * from sub_dim_product_category



