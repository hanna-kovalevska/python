/*
7. Вывести топ 5 юзеров, которые создали корзины, но так и не сделали заказы.
*/

SELECT users_user_id
FROM carts
WHERE cart_id NOT IN (SELECT carts_cart_id
					 FROM orders
					 )
LIMIT 5
