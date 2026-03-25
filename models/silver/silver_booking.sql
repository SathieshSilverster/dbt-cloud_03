
with src_booking as (
    select * from {{ ref('raw_booking')}}
)select 
    BOOKING_ID,
    LISTING_ID,
    BOOKING_DATE,
    NIGHTS_BOOKED,
    BOOKING_AMOUNT,
    CLEANING_FEE,
    SERVICE_FEE,
    (CLEANING_FEE+SERVICE_FEE) AS TOTAL,
    INITCAP(BOOKING_STATUS) AS BOOKING_STATUS,
    CREATED_AT
    from src_BOOKING