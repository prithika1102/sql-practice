SELECT account_id, 
sum(
case 
    when transaction_type ='Deposit' then amount
    else -amount
end) as final_amount
FROM transactions
group by account_id
