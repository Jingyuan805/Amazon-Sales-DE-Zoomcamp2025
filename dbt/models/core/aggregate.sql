{{ config(materialized='table') }}

with sales as (
    select * from {{ ref('stg_staging__amazon_sales') }}
)

    select 
    category_clean,

    count(distinct user_id) as num_users,
    count(*) as num_purchases,
    avg(rating_clean) as avg_rating,
    avg(actual_price_clean) as avg_actual_price,
    avg(discounted_price_clean) as avg_discounted_price,
    sum(actual_price_clean) as revenue_actual,
    sum(discounted_price_clean) as revenue_discounted
 
    from sales
    group by 1