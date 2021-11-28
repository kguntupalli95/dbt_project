/*
    All time gross sales.
*/



SELECT eventid, sum(pricepaid) total_price
FROM sales
GROUP BY eventid