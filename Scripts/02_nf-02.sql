
/* Запрос */
SELECT 
  id -- идентификатор записи 
  ,(regexp_split_to_array(craftsman_name, '\s+'))[1] AS craftsman_name -- имя мастера
  ,(regexp_split_to_array(craftsman_name, '\s+'))[2] AS craftsman_surname -- фамилия мастера
  ,craftsman_address -- адрес мастера
  ,(regexp_split_to_array(customer_name, '\s+'))[1] AS customer_name -- имя заказчика
  ,(regexp_split_to_array(customer_name, '\s+'))[2] AS customer_surname -- фамилия заказчика
  ,customer_address -- адрес заказчика
FROM nf_lesson.preparatory_1_1nf;

/* Создание таблицы nf_lesson.preparatory_2_1nf */

DROP TABLE IF EXISTS nf_lesson.preparatory_2_1nf;
CREATE TABLE nf_lesson.preparatory_2_1nf AS
SELECT 
  id -- идентификатор записи 
  ,(regexp_split_to_array(craftsman_name, '\s+'))[1] AS craftsman_name -- имя мастера
  ,(regexp_split_to_array(craftsman_name, '\s+'))[2] AS craftsman_surname -- фамилия мастера
  ,craftsman_address -- адрес мастера
  ,(regexp_split_to_array(customer_name, '\s+'))[1] AS customer_name -- имя заказчика
  ,(regexp_split_to_array(customer_name, '\s+'))[2] AS customer_surname -- фамилия заказчика
  ,customer_address -- адрес заказчика
FROM nf_lesson.preparatory_1_1nf;

/* Задание первичного ключа таблицы */
ALTER TABLE nf_lesson.preparatory_2_1nf ADD CONSTRAINT pk_preparatory_2_1nf PRIMARY KEY (id);