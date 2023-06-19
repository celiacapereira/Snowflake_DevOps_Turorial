

with source as (

    select AISLE_ID,
    AISLE from {{ source('market_basket', 'AISLE') }}

),
renamed as (

    select
    AISLE_ID,
    AISLE
    from source

)

select AISLE_ID,
    AISLE from renamed