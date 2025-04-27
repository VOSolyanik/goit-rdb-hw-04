USE products_db;

SELECT COUNT(*)
FROM order_details
	INNER JOIN orders ON order_details.order_id = orders.id
	LEFT JOIN customers ON orders.customer_id = customers.id
	LEFT JOIN products ON order_details.product_id = products.id
	INNER JOIN categories ON products.category_id = categories.id
	INNER JOIN employees ON orders.employee_id = employees.employee_id
	INNER JOIN shippers ON orders.shipper_id = shippers.id
	INNER JOIN suppliers ON products.supplier_id = suppliers.id;