with source as (

    select ORDER_ID, PRODUCT_ID, ADD_TO_CART_ORDER,REORDER from {{ source('market_basket', 'ORDER_PRODUCTS') }}

),
renamed as (

    select
    ORDER_ID,
    PRODUCT_ID,
    ADD_TO_CART_ORDER,
    REORDER
    from source

)

select ORDER_ID, PRODUCT_ID, ADD_TO_CART_ORDER,REORDER from renamed