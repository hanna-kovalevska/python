/*
2. Вывести все продукты, которые так и не попали ни в 1 заказ. (но в корзину попасть могли).
*/

SELECT *
FROM products
WHERE product_id NOT IN (SELECT carts_cart_id 
						 FROM cart_product
						 WHERE products_product_id IN (SELECT carts_cart_id
													  FROM orders
													  )
						)
