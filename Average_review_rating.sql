SELECT Extract (Month from submit_date) as mth, 
       product_id as product, 
       Round ((avg(stars)::float)::numeric,2) as avg_stars
FROM reviews
group by 
       Extract( Month from submit_date),
       product_id;