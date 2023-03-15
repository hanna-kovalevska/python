/*
4. Вывести топ 10 продуктов, которые не только добавляли в корзины, но и оформляли заказы чаще всего.
*/

SELECT product_id, product_title, product_description, in_stock, price, slug, category_id, COUNT( orders.order_id) AS Count
FROM products, orders, cart_product
WHERE cart_product.products_product_id = products.product_id AND cart_product.carts_cart_id = orders.carts_cart_id
GROUP BY product_id
ORDER BY Count DESC
LIMIT 10