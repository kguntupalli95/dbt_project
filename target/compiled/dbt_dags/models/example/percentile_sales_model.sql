/*
    Get percentiles of all time gross sales.
*/



SELECT eventid, total_price, ntile(1000) over(order by total_price desc) as percentile 
FROM "dev"."tickit"."all_gross_sales_model"