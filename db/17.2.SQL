/*
Вывести:
2. вывести максимальную сумму сделки за 3 квартал 2020
*/
SELECT MAX(total)
FROM orders
WHERE updated_at>='01.07.2020' AND updated_at<'01.10.2020' AND order_status_order_status_id IN 
		(SELECT order_status_id
		 FROM order_status
		 WHERE status_name = 'Finished')
									   