/*
1. Вывести продукты, которые ни разу не попадали в корзину.
*/

SELECT *
FROM products
WHERE product_id NOT IN (SELECT carts_cart_id FROM cart_product)
