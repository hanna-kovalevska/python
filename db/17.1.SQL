/*
Вывести:
1. среднюю сумму всех завершенных сделок
*/
SELECT AVG(total)
FROM orders
WHERE order_status_order_status_id IN (SELECT order_status_id
									   FROM order_status
									   WHERE status_name = 'Finished')