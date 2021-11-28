

  create  table
    "dev"."tickit"."all_gross_sales_model__dbt_tmp"
    
    
  as (
    /*
    All time gross sales.
*/



SELECT eventid, sum(pricepaid) total_price
FROM sales
GROUP BY eventid
  );