SELECT 
count(*) Filter (where device_type ='laptop') as laptop_views,
count(*) Filter (where device_type in ('tablet','mobile')) as mobie_views
FROM viewership ;