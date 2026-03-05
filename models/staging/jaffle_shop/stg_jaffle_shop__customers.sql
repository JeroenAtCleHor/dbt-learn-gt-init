-- select
--     id as customer_id,
--     first_name,
--     last_name

-- from {{ source('jaffle_shop', 'customers') }}

-- following code is generated with codegen: 
-- dbt run-operation generate_base_model --args '{"source_name": "jaffle_shop", "table_name": "customers"}'

with source as (

    select * from {{ source('jaffle_shop', 'customers') }}

),

renamed as (

    select
        id as customer_id,
        first_name,
        last_name

    from source

)

select * from renamed