{{
    config(
        alias='s_listing'
    )
}}
select * from {{source('silver','RAW_LISTINGS')}}