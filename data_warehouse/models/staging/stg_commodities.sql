with source as (
    select
        "Date",
        "Close",
        "simbolo"
    from 
        {{ source ('dw_dbt312', 'commodities') }}
),

renamed as (
    select
        cast("Date" as date) as data,
        "Close" as valor_fechamento,
        simbolo
    from
        source
)

select * from renamed