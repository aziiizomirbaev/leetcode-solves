WITH tab AS (
    SELECT customer_id, MIN(order_date) AS date 
    FROM Delivery 
    GROUP BY customer_id 
    ORDER BY customer_id
) 
SELECT ROUND((
    SELECT COUNT(*) 
    FROM tab 
    INNER JOIN Delivery AS d ON tab.customer_id = d.customer_id
    WHERE tab.date = d.customer_pref_delivery_date
) * 1.00 / COUNT(*) * 100, 2) AS immediate_percentage
FROM tab
