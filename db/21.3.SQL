/*
3. Вывести топ 10 продуктов, которые добавляли в корзины чаще всего.
*/

SELECT product_id, product_title, product_description, in_stock, price, slug, category_id, COUNT( cart_product.carts_cart_id) AS Count
FROM products, cart_product
WHERE cart_product.products_product_id = products.product_id
GROUP BY cart_product.products_product_id, 	product_id
ORDER BY Count DESC
LIMIT 10