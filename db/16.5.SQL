/*
Вывести: (если задание можно решить несколькими способами, указывай все)
5. незавершенные заказы по состоянию на 31.12.2020
//Canceled вважаємо завершеним 
//останнє оновлення 30.12.2020
*/
SELECT *
FROM orders
/*WHERE order_status_order_status_id NOT IN (SELECT order_status_id 
									   FROM order_status 
									   WHERE status_name = 'Canceled' or status_name = 'Finished')*/
									   
WHERE order_status_order_status_id IN (SELECT order_status_id 
									   FROM order_status 
									   WHERE status_name in ('Accepted','In progress', 'Paid'))
									   