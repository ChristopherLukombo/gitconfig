SELECT price , STRING_AGG("name" , ',') AS products
FROM menu m
GROUP BY price ;
