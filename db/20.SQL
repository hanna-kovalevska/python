/*
Вывести наименование группы товаров, общее количество по группе товаров в порядке убывания количества
*/

SELECT products.category_id, categories.category_title,  COUNT(product_id) AS Count
FROM products
JOIN categories ON categories.category_id = products.category_id
GROUP BY products.category_id, categories.category_title
ORDER BY Count DESC

/*
SELECT products.category_id, categories.category_title,  COUNT(products.product_id) AS Count
FROM products, categories
WHERE categories.category_id = products.category_id
GROUP BY products.category_id, categories.category_title
ORDER BY Count DESC
*/
