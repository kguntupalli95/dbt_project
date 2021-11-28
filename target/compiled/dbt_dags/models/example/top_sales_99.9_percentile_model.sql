/*
    Find events in 99.9 percentile
*/



SELECT eventname, total_price 
FROM "dev"."tickit"."percentile_sales_model" q, event e
WHERE q.eventid = e.eventid
AND percentile = 1
ORDER BY total_price DESC