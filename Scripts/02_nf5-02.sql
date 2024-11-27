SELECT marketplace, craftsman, craftsman_status, product, create_dttm
FROM nf_lesson.source_5nf;


SELECT craftsman, craftsman_status, product, create_dttm
FROM nf_lesson.craftsman_product_5nf;
SELECT marketplace, craftsman, craftsman_status, create_dttm
FROM nf_lesson.marketplace_craftsman_5nf;
SELECT marketplace, product, create_dttm
FROM nf_lesson.marketplace_product_5nf;


/* Соединение таблиц */
SELECT DISTINCT mc.marketplace, mc.craftsman, mc.craftsman_status, cp.product, mc.create_dttm
FROM nf_lesson.marketplace_craftsman_5nf mc 
/* Присоедините таблицы */
JOIN nf_lesson.marketplace_product_5nf mp ON mc.marketplace = mp.marketplace
JOIN nf_lesson.craftsman_product_5nf cp ON cp.craftsman = mc.craftsman AND cp.product = mp.product 
;