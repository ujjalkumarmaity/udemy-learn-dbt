{{ config(materialized='table') }}

SELECT category,
SUM(PROFIT) AS total_profit,
SUM(AMOUNT)  as total_ammount
FROM 
"OUR_FIRST_DB"."PUBLIC"."ORDERS" 
GROUP BY CATEGORY