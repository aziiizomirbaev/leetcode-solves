SELECT c.customer_id
FROM Customer AS c 
GROUP BY customer_id 
HAVING COUNT(DISTINCT c.product_key) = (SELECT COUNT(*) FROM Product)