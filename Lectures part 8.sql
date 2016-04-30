Select *
from product;

select *
from sales;


select sales_date, order_id, product.product_name
from sales, product
where sales.product_id = product.product_id;

select sales_date, order_id, sales.product_id, product.product_name
from sales Inner Join product
      on sales.PRODUCT_ID = product.PRODUCT_ID
order by product_id;