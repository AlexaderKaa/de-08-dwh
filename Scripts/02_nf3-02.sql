/*Создание таблиц nf_lesson.product_3nf*/

DROP TABLE IF EXISTS nf_lesson.product_3nf;
CREATE TABLE nf_lesson.product_3nf AS
SELECT DISTINCT
        product_id, -- идентификтор товара ручной работы
        product_name, -- название товара ручной работы
        product_description, -- описание товара ручной работы
        product_type, -- тип товара ручной работы
        product_price, -- цена товара ручной работы
        craftsman_id -- идентификатор мастера
FROM nf_lesson.product_2nf;     

ALTER TABLE nf_lesson.product_3nf ADD CONSTRAINT pk_product_3nf PRIMARY KEY (product_id);

/*Создание таблиц nf_lesson.craftsman_3nf*/

DROP TABLE IF EXISTS nf_lesson.craftsman_3nf;
CREATE TABLE nf_lesson.craftsman_3nf AS
SELECT DISTINCT 
  craftsman_id
  ,craftsman_name -- имя мастера
  ,craftsman_surname -- фамилия мастера
  ,craftsman_address_building -- адрес мастера (номер дома) -- номер дома мастера
  ,craftsman_address_street -- адрес мастера (улица) -- название улицы мастера
  ,craftsman_birthday
  ,craftsman_email
FROM nf_lesson.product_2nf;

ALTER TABLE nf_lesson.craftsman_3nf ADD CONSTRAINT pk_craftsman_3nf PRIMARY KEY (craftsman_id);