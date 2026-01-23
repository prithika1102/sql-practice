SELECT user_id, DATEDIFF (Max(post_date), min(post_date)) as days_between
FROM posts
where post_date >= '2021-01-01'
     and post_date < '2022-01-01'
Group by user_id
Having count(*)>=2;