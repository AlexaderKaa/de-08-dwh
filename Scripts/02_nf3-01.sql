/*
Третья нормальная форма (3NF)
Чтобы перевести модель данных из второй формы в третью, каждый неключевой атрибут должен напрямую, или нетранзитивно, зависеть от первичного ключа. 
Таким образом, таблица находится в 3NF, если:
она находится во второй нормальной форме;
все неключевые поля таблицы нетранзитивно зависят от ключевого поля.
Именно третья нормальная форма подходит для надёжной работы с транзакциями. 
В этой форме данные занимают минимальное место, и производительность оптимизирована для обработки нескольких записей. 
Вернёмся к интернет-магазину. Структуру таблиц можно улучшить ещё больше. В таблице orders пока хранятся две сущности — заказы и клиенты. 
Причём имя клиента зависит от идентификатора клиента, который, в свою очередь, зависит от идентификатора заказа. 
Получается транзитивная зависимость имени клиента и идентификатора заказа: Client → Client_id → Order_id.
*/

/*

Напомним, таблицы, приведённые к 3NF, во-первых, разумеется, выполняют все требования 2NF. 
А во-вторых, все неключевые поля в них нетранзитивно зависят от ключевого поля, то есть между ними нет промежуточных «звеньев». 
В предыдущем уроке мы приводили пример таблицы, в которой существовала транзитивная зависимость имени клиента и идентификатора заказа (Client → Client_id → Order_id).
*/

/*Создание таблицы nf_lesson.order_3nf*/

DROP TABLE IF EXISTS nf_lesson.order_3nf;
CREATE TABLE nf_lesson.order_3nf AS
SELECT DISTINCT 
        order_id, -- идентификатор заказа
        order_created_date, -- дата создания заказа
        order_completion_date, -- дата выполнения заказа
        order_status, -- статус выполнения заказа (created, in progress, delivery, done)
        customer_id, -- идентификатор заказчика
        product_id -- идентификатор изделия
FROM nf_lesson.order_2nf; 
ALTER TABLE nf_lesson.order_3nf ADD CONSTRAINT pk_order_3nf PRIMARY KEY (order_id);

/*Создание таблицы nf_lesson.customer_3nf*/

DROP TABLE IF EXISTS nf_lesson.customer_3nf;
CREATE TABLE nf_lesson.customer_3nf AS
SELECT DISTINCT 
        customer_id, -- идентификатор заказчика
        customer_name, -- имя заказчика
        customer_surname, -- фамилия заказчика
        customer_address_street, -- адрес заказчика (улица)
        customer_address_building, -- адрес заказчика (номер дома)
        customer_birthday, -- дата рождения заказчика
        customer_email -- электронная почта заказчикаFROM nf_lesson.order_2nf
FROM nf_lesson.order_2nf; 

ALTER TABLE nf_lesson.customer_3nf ADD CONSTRAINT pk_customer_3nf PRIMARY KEY (customer_id);