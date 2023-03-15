/*
Вывести: (если задание можно решить несколькими способами, указывай все)
4. подукты следующих категорий Category 7, Category 11, Category 18
*/
SELECT *
FROM products
WHERE category_id in (SELECT category_id 
					  FROM categories
					  WHERE category_title in ('Category 7', 'Category 11', 'Category 18')
					 )
/*WHERE category_id in (7,11,18)*/