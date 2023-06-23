with raw_orders as(
select * from RAW.JAFFLE_SHOP.ORDERS
)

select
id as order_id,
user_id as customer_id,
order_date,
status,
_etl_loaded_at
from
raw_orders