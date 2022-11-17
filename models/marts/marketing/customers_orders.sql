with orders as (
    select *
    from {{ ref('fct_orders') }}
),
customers as (
    select *
    from {{ ref('dim_customers') }}
)
select 
    orders.order_id,
    orders.customer_id,
    orders.order_status,
    orders.order_purchase_timestamp,
    orders.order_approved_at,
    orders.order_delivered_carrier_date,
    orders.order_delivered_customer_date,
    orders.order_estimated_delivery_date,
    customers.zipcode, 
    customers.city ,
    customers.state,
from orders 
   left join customers on orders.customer_id = customers.customer_id