SELECT candidate_id
FROM candidates
where skill in ( 'Python' , 'Tableau' , 'PostgreSQL') 
Group by candidate_id
Having count(*) = 3
order by candidate_id;