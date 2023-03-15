/*Вывести заказы, которые успешно доставлены и оплачены
?? Тоді потрібно вивести "Paid" та "Finished" в статусах
*/
SELECT *
FROM orders
WHERE order_status_order_status_id IN (SELECT order_status_id 
									   FROM order_status 
									   WHERE status_name IN ('Paid', 'Finished')
									  /* WHERE status_name = 'Paid' or status_name = 'Finished'*/)