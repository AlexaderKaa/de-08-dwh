-- SELECT * FROM nf_lesson.preparatory_2_1nf;

/* Запрос */
SELECT 
  id -- идентификатор записи
  ,craftsman_name -- имя мастера
  ,craftsman_surname -- фамилия мастера
  ,(regexp_match(craftsman_address , '\d+'))[1] AS craftsman_address_building -- адрес мастера (номер дома) -- номер дома мастера
  ,(regexp_match(craftsman_address , '[a-zA-Z]+[a-zA-Z\s]+'))[1] AS craftsman_address_street -- адрес мастера (улица) -- название улицы мастера
  ,customer_name -- имя заказчика
  ,customer_surname -- фамилия заказчика
  ,(regexp_match(customer_address , '\d+'))[1] AS customer_address_building -- адрес мастера (номер дома) -- номер дома заказчика
  ,(regexp_match(customer_address , '[a-zA-Z]+[a-zA-Z\s]+'))[1] AS customer_address_street -- адрес мастера (улица) -- название улицы заказчика
FROM nf_lesson.preparatory_2_1nf;

/* Создание таблицы nf_lesson.preparatory_3_1nf */

DROP TABLE IF EXISTS nf_lesson.preparatory_3_1nf;
CREATE TABLE nf_lesson.preparatory_3_1nf AS
SELECT
  id -- идентификатор записи
  ,craftsman_name -- имя мастера
  ,craftsman_surname -- фамилия мастера
  ,(regexp_match(craftsman_address , '\d+'))[1] AS craftsman_address_building -- адрес мастера (номер дома) -- номер дома мастера
  ,(regexp_match(craftsman_address , '[a-zA-Z]+[a-zA-Z\s]+'))[1] AS craftsman_address_street -- адрес мастера (улица) -- название улицы мастера
  ,customer_name -- имя заказчика
  ,customer_surname -- фамилия заказчика
  ,(regexp_match(customer_address , '\d+'))[1] AS customer_address_building -- адрес мастера (номер дома) -- номер дома заказчика
  ,(regexp_match(customer_address , '[a-zA-Z]+[a-zA-Z\s]+'))[1] AS customer_address_street -- адрес мастера (улица) -- название улицы заказчика
FROM nf_lesson.preparatory_2_1nf;

/* Задание первичного ключа таблицы */
ALTER TABLE nf_lesson.preparatory_3_1nf ADD CONSTRAINT pk_preparatory_3_1nf PRIMARY KEY (id);