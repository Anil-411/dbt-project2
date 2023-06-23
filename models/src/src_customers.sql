with raw_customers as(
select * from RAW.JAFFLE_SHOP.CUSTOMERS
)

select
id as customer_id,
first_name,
last_name
from
raw_customers