/*
6. Вывести топ 5 юзеров, которые сделали больше всего заказов (кол-во заказов).
*/

SELECT carts.users_user_id, COUNT(orders.order_id) AS count
FROM orders, carts
WHERE carts.cart_id=orders.carts_cart_id
GROUP BY orders.carts_cart_id, carts.users_user_id
ORDER BY count DESC 
LIMIT 5