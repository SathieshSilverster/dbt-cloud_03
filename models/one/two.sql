{{
    config(
        materialized='table',
        transient=false
    )
}}


select * from {{source('two','emp')}}