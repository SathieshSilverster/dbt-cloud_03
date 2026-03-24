{{
    config(
        materialized='table'
    )
}}

select * from {{source('one','raw_host')}}