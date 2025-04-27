USE products_db;

SELECT categories.name AS category_name,
       COUNT(*) AS number_of_rows,
       AVG(order_details.quantity) AS avg_quantity
FROM order_details
	INNER JOIN products ON order_details.product_id = products.id
	INNER JOIN categories ON products.category_id = categories.id
GROUP BY categories.name
HAVING AVG(order_details.quantity) > 21
ORDER BY number_of_rows DESC
LIMIT 4 OFFSET 1;
