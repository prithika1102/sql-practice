SELECT 
Round(((sum(item_count*order_occurrences) / sum(order_occurrences))::float)::numeric,1)
as mean
FROM items_per_order;