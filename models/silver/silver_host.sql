with src_host as (
    select * from {{ ref('raw_host')}}
)select 
    HOST_ID,
    NVL(
        HOST_NAME,
        'Anonymous'
    ) as host_name,
    HOST_SINCE AS HOSTSINCE,
    INITCAP(IS_SUPERHOST) AS IS_SUPERHOST,
    RESPONSE_RATE,
    CREATED_AT
    from src_host