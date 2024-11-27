/* Поиск дублирующихся идентификаторов */

/* Задайте запрос для подсчёта строк из таблицы nf_lesson.craft_market_wide_1nf с группировкой по полю craftsman_id */
SELECT craftsman_id, COUNT(*) AS craftsman_qty
FROM nf_lesson.craft_market_wide_1nf
GROUP BY craftsman_id HAVING COUNT(*) > 1; 

/* Задайте запрос для подсчёта строк из таблицы nf_lesson.craft_market_wide_1nf с группировкой по полю product_id */
SELECT product_id, COUNT(*) AS product_id_qty
FROM nf_lesson.craft_market_wide_1nf
GROUP BY product_id HAVING COUNT(*) > 1; 

/* Задайте запрос для подсчёта строк из таблицы nf_lesson.craft_market_wide_1nf с группировкой по полю order_id*/
SELECT order_id, COUNT(*) AS order_id_qty
FROM nf_lesson.craft_market_wide_1nf
GROUP BY order_id HAVING COUNT(*) > 1; 

/* Задайте запрос для подсчёта строк из таблицы nf_lesson.craft_market_wide_1nf с группировкой по полю customer_id */
SELECT customer_id, COUNT(*) AS customer_id_qty
FROM nf_lesson.craft_market_wide_1nf
GROUP BY customer_id HAVING COUNT(*) > 1; 