SELECT app_id, Round (100.0 *(
count(*) filter (where event_type = 'click')/ 
count(*) Filter (where event_type ='impression')::float)::numeric,2) as ctr
FROM events
Where TIMESTAMP >= '2022-01-01'
and TIMESTAMP < '2023-01-01'
GROUP BY app_id

-- ::float - floating division in postgresql (eg:3/5)
-- :: numeric - Round(numerix, numeric) in postgresql