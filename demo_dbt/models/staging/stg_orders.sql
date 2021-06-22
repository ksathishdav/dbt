-- stage_orders.sql

WITH SRC_ORDERS AS (
    SELECT * FROM {{ source('DBT_DEMO','ORDERS') }}
),

STG_ORDERS as (
  select * from SRC_ORDERS
)

SELECT * FROM STG_ORDERS