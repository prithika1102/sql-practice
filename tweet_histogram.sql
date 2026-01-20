with tweet_per_user as (
SELECT user_id, 
count(*) as tweet_counts -- count all the ROWS
FROM tweets
Where tweet_date >= '2022-01-01' -- where (to filter)
and tweet_date < '2023-01-01'
Group by user_id  
)
 
Select tweet_counts as tweet_bucket,
count(*) as users_num
From tweet_per_user
Group by tweet_counts;