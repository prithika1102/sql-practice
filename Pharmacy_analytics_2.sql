SELECT manufacturer, count(drug) as drug_count, abs(sum(cogs-total_sales)) as total_loss
FROM pharmacy_sales 
where cogs-total_sales > 0
group by manufacturer
order by total_loss desc;