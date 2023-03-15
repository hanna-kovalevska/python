/*
Создайте новую таблицу potential_customers с полями id, email, name, surname, second_name, city
Заполните данными таблицу.
Выведите имена и электронную почту потеницальных и существующих пользователей из города city 17
*/
CREATE TABLE potential_customers(
	id INT PRIMARY KEY, 
	email VARCHAR(255),
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	city VARCHAR(255)
);

INSERT INTO potential_customers
VALUES (1, '11email', '11first_name', '11last_name', 'city 17');

INSERT INTO potential_customers
VALUES (2, '22email', '22first_name', '22last_name', 'city 1');

INSERT INTO potential_customers
VALUES (3, '33email', '33first_name', '33last_name', 'city 17');

SELECT *
FROM potential_customers
WHERE city = 'city 17'
UNION SELECT user_id, email, first_name, last_name, city
FROM users
WHERE city = 'city 17'