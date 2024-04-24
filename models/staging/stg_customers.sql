with

source as (

    select * from {{ source('ecom', 'raw_customers') }}

),

renamed as (

    select

        ----------  ids
        'fixed_incorrect_id' as customer_id,

        ---------- text
        name as customer_name

    from source

)

select * from renamed
