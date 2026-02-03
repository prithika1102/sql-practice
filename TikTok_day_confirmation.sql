SELECT user_id
FROM emails
inner join texts on emails.email_id = texts.email_id
where action_date = signup_date + INTERVAL 1 Day
and signup_action = 'Confirmed';