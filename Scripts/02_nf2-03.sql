/*Создание таблиц nf_lesson.product_2nf*/

DROP TABLE IF EXISTS nf_lesson.product_2nf;
CREATE TABLE nf_lesson.product_2nf AS
SELECT DISTINCT
        product_id, -- идентификтор товара ручной работы
        product_name, -- название товара ручной работы
        product_description, -- описание товара ручной работы
        product_type, -- тип товара ручной работы
        product_price, -- цена товара ручной работы
        craftsman_id, -- идентификатор мастера
        craftsman_name, -- имя мастера
        craftsman_surname, -- фамилия мастера
        craftsman_address_street, -- адрес мастера (улица)
        craftsman_address_building, -- адрес мастера (номер дома)
        craftsman_birthday, -- дата рождения мастера
        craftsman_email -- электронная почта мастера
FROM nf_lesson.craft_market_wide_1nf; 

ALTER TABLE nf_lesson.product_2nf ADD CONSTRAINT pk_product_2nf PRIMARY KEY (product_id);