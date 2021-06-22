-- stg_state.sql 

WITH SRC_STATE AS (
    SELECT * FROM {{ source('DBT_DEMO','STATE') }}
),

STG_STATE as (
  select
    st,
    state_name
  from SRC_STATE
)

select
  *
from STG_STATE