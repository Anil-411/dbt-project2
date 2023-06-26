with raw_payments as(
select * from {{ source('stripe','payment') }}
)

select
id as payment_id,
orderid as order_id,
paymentmethod as payment_method,
status,
amount / 100 as amount,
created as created_at,
_batched_at
from
raw_payments