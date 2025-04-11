{{
    config(
        materialized='view'
    )
}}


with source as 
(
  select *,
    row_number() over(partition by product_id, user_id, review_id) as rn
  from {{ source('staging', 'amazon_sales') }}
  where product_id is not null 
)

, renamed as (

    select
        discounted_price_clean,
        actual_price_clean,
        discount_percentage_clean,
        rating_clean,
        product_id,
        product_name,
        category,
        SPLIT(category, '|')[OFFSET(0)] as category_clean,
        discounted_price,
        actual_price,
        discount_percentage,
        rating,
        rating_count,
        about_product,
        user_id,
        user_name,
        review_id,
        review_title,
        review_content,
        img_link,
        product_link

    from source
    where rn = 1

)

select * from renamed
