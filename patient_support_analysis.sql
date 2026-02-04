with total_count as (
SELECT count(policy_holder_id) as total
FROM callers
group by policy_holder_id
Having count(policy_holder_id) >2)

select count(total) as policy_holder_count
from total_count;