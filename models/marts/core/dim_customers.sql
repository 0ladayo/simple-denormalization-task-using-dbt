with customers as (
    select * from {{ ref('stg_customers')}}
),

state as (
    select * from {{ ref('stg_state')}}
),

final as (

    select 
    
    customers.customer_id, 
    
    customers.city, 
    
    customers.zipcode,
    
    state.state_name as state,

    customers.datetime_created,

    customers.datetime_updated

    from customers

    left join state using (state_code)
)

select * from final