with assign_row_number as (
SELECT 
  user_id, spend, transaction_date,
  ROW_NUMBER() OVER(PARTITION BY user_id order by transaction_date) as index_value
FROM transactions)

select user_id, spend, transaction_date from assign_row_number 
where index_value =3
