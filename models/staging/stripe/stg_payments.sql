with payments as (
    select
        id as payment_id,
        orderid as order_id,
        paymentmethod as payment_method,
        status,
        amount / 100.0 as amount, -- amount is stored in cents, convert it to dollars
        created as created_at

    from raw.stripe.payment
)

select * from payments