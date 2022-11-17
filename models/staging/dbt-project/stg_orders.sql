select 
    *

from {{ source('dbt-project', 'orders')}}
