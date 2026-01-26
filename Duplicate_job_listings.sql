with total_duplicate_company_count as
(
SELECT count(company_id) as total_duplicate_companies
FROM job_listings
Group by company_id
Having count(*) >=2
)

Select count(total_duplicate_companies) as duplicate_companies
from total_duplicate_company_count;
