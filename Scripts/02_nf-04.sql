/* Создание таблицы nf_lesson.craft_market_wide_1nf */

DROP TABLE IF EXISTS nf_lesson.craft_market_wide_1nf;
CREATE TABLE nf_lesson.craft_market_wide_1nf AS
SELECT
  id -- идентификатор записи
  ,craftsman_id
  ,(regexp_split_to_array(craftsman_name, '\s+'))[1] AS craftsman_name -- имя мастера
  ,(regexp_split_to_array(craftsman_name, '\s+'))[2] AS craftsman_surname -- фамилия мастера
  ,(regexp_match(craftsman_address , '\d+'))[1] AS craftsman_address_building -- адрес мастера (номер дома) -- номер дома мастера
  ,(regexp_match(craftsman_address , '[a-zA-Z]+[a-zA-Z\s]+'))[1] AS craftsman_address_street -- адрес мастера (улица) -- название улицы мастера
  ,craftsman_birthday
  ,craftsman_email
  ,product_id
  ,product_name
  ,product_description
  ,product_type
  ,product_price	
  ,order_id
  ,order_created_date
  ,order_completion_date
  ,order_status
  ,customer_id
  ,(regexp_split_to_array(customer_name, '\s+'))[1] AS customer_name -- имя заказчика
  ,(regexp_split_to_array(customer_name, '\s+'))[2] AS customer_surname -- фамилия заказчика
  ,(regexp_match(customer_address , '\d+'))[1] AS customer_address_building -- адрес мастера (номер дома) -- номер дома заказчика
  ,(regexp_match(customer_address , '[a-zA-Z]+[a-zA-Z\s]+'))[1] AS customer_address_street -- адрес мастера (улица) -- название улицы заказчика
  ,customer_birthday
  ,customer_email
FROM source1.craft_market_wide;

ALTER TABLE nf_lesson.craft_market_wide_1nf ADD CONSTRAINT pk_craft_market_wide_1nf PRIMARY KEY (id);