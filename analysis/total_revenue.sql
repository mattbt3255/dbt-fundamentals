with total_revenue as (
    select * from {{ ref('stg_payments') }}
)

select 
    sum(case when lower(status) = 'success' then amount else null end) as successful_payment_amount

from total_revenue