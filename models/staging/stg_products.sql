with source as (

    select     PRODUCT_ID,
    PRODUCT_NAME,
    AISLE_ID,
    DEPARTMENT_ID from {{ source('market_basket', 'PRODUCTS') }}

),
renamed as (

    select
    PRODUCT_ID,
    PRODUCT_NAME,
    AISLE_ID,
    DEPARTMENT_ID
    from source

)

select
    PRODUCT_ID,
    PRODUCT_NAME,
    AISLE_ID,
    DEPARTMENT_ID
from renamed