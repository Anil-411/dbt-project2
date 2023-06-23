with raw_payments as(
select * from {{ ref("stg_payments") }}
)

select
payment_id,
orderid,
paymentmethod,
status,
case
when amount=0 then 1
else amount
end as amount,
created_at,
_batched_at
from
raw_payments