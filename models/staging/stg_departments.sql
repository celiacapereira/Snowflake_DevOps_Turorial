with source as (

    select DEPARTMENT_ID, DEPARTMENT from {{ source('market_basket', 'DEPARTMENT') }}

),
renamed as (

    select
    DEPARTMENT_ID,
    DEPARTMENT
    from source

)

select DEPARTMENT_ID, DEPARTMENT from renamed