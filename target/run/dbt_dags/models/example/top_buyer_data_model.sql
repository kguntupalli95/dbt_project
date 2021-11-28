

  create  table
    "dev"."tickit"."top_buyer_data_model__dbt_tmp"
    
    
  as (
    /*
    Get data on top 10 buyers by quantity.
*/



SELECT firstname, lastname, total_quantity 
FROM "dev"."tickit"."top_buyers_by_quantity_model" q, users
WHERE q.buyerid = userid
ORDER BY q.total_quantity DESC
  );