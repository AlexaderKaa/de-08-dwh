/*
 Перевод 4NF в 5NF подразумевает избавление от зависимостей соединения путём декомпозиции без потерь данных.
 Teacher-Grade
 Teacher-Subject
 Grade-Subject
 
При переводе таблиц из четвёртой нормальной формы в пятую нужно избавиться от ещё одного вида зависимости — зависимости соединения. 
Часть данных одного атрибута не должна зависеть от части данных других атрибутов.
Убирая зависимость соединения, важно не потерять данные. Это можно проверить, соединив полученные таблицы обратно и сверив с исходной таблицей.
 
 */

SELECT marketplace, craftsman, craftsman_status, product, create_dttm
FROM nf_lesson.source_5nf;

/*Создание таблицы nf_lesson.marketplace_craftsman_5nf*/

DROP TABLE IF EXISTS nf_lesson.marketplace_craftsman_5nf;
CREATE TABLE nf_lesson.marketplace_craftsman_5nf AS
SELECT DISTINCT marketplace, craftsman, craftsman_status, create_dttm    
FROM nf_lesson.source_5nf; 

/*Создание таблицы nf_lesson.marketplace_product_5nf*/

DROP TABLE IF EXISTS nf_lesson.marketplace_product_5nf;
CREATE TABLE nf_lesson.marketplace_product_5nf AS
SELECT DISTINCT marketplace, product    
FROM nf_lesson.source_5nf;


/*Создание таблицы nf_lesson.craftsman_product_5nf*/

DROP TABLE IF EXISTS nf_lesson.craftsman_product_5nf;
CREATE TABLE nf_lesson.craftsman_product_5nf AS
SELECT craftsman, product, craftsman_status, create_dttm    
FROM nf_lesson.source_5nf;    



