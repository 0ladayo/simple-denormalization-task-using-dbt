select 
    *

from {{ source('dbt-project', 'state')}}