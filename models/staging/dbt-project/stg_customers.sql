select

    *
from {{ source('dbt-project', 'customers')}}