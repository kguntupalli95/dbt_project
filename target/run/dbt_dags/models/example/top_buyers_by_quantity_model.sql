

  create  table
    "dev"."tickit"."top_buyers_by_quantity_model__dbt_tmp"
    
    
  as (
    /*
    Find top 10 buyers by quantity.
*/



SELECT buyerid, sum(qtysold) total_quantity
FROM sales
GROUP BY buyerid
ORDER BY total_quantity DESC
LIMIT 10
  );