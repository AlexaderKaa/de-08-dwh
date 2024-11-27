/*Создание таблиц nf_lesson.order_2nf*/

DROP TABLE IF EXISTS nf_lesson.order_2nf;
CREATE TABLE nf_lesson.order_2nf AS
SELECT DISTINCT 
        order_id, -- идентификатор заказа
        order_created_date, -- дата создания заказа
        order_completion_date, -- дата выполнения заказа
        order_status, -- статус выполнения заказа (created, in progress, delivery, done)
        customer_id, -- идентификатор заказчика
        customer_name, -- имя заказчика
        customer_surname, -- фамилия заказчика
        customer_address_street, -- адрес заказчика (улица)
        customer_address_building, -- адрес заказчика (номер дома)
        customer_birthday, -- дата рождения заказчика
        customer_email, -- электронная почта заказчика
        product_id -- идентификатор изделия
FROM nf_lesson.craft_market_wide_1nf; 

ALTER TABLE nf_lesson.order_2nf ADD CONSTRAINT pk_order_2nf PRIMARY KEY (order_id);