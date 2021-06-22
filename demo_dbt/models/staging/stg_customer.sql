-- stage_customer.sql

WITH SRC_CUSTOMER AS (
    SELECT * FROM {{ source('DBT_DEMO','CUSTOMER') }}
),

STG_CUSTOMER as (
  SELECT
    CUSTOMER_ORDER_ID,
    CUSTOMER_UNIQUE_ID,
    CUSTOMER_ZIP_CODE_PREFIX,
    CUSTOMER_CITY,
    CUSTOMER_ST
  FROM SRC_CUSTOMER
)

SELECT * FROM STG_CUSTOMER