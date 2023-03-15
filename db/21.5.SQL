/*
5. Вывести топ 5 юзеров, которые потратили больше всего денег (total в заказе).
*/

SELECT users.user_id, SUM(orders.total) AS sum
FROM users, orders, carts
WHERE carts.users_user_id = users.user_id AND carts.cart_id=orders.carts_cart_id
GROUP BY users.user_id
ORDER BY sum DESC 
LIMIT 5