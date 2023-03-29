with 

source as (

  select * from {{ source('snowflake_sample_data', 'customer') }}

),

transformed as (

  select 

    c_custkey as customer_key,
    c_name as customer_name,
    c_nationkey as nation_key,
    c_phone as customer_phone,
    c_acctbal as customer_acct_balance

  from source

)

select * from transformed