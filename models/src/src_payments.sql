with raw_payments as(
select * from RAW.STRIPE.PAYMENT
)

select
id as payment_id,
orderid,
paymentmethod,
status,
amount,
created as created_at,
_batched_at
from
raw_payments