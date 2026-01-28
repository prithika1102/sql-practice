SELECT users.city, count(status) as Total_completed 
FROM trades
join users on trades.user_id = users.user_id
where status = 'Completed'
Group by users.city
order by Total_completed desc
limit 3;