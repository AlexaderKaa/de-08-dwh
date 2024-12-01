/* cоздание таблицы факта "Заказы" */
DROP TABLE IF EXISTS dwh.f_order;
CREATE TABLE dwh.f_order (
  order_id BIGINT GENERATED ALWAYS AS IDENTITY, -- идентификатор заказа
  product_id int8, -- идентификтор товара
  craftsman_id int8, -- идентификатор мастера
  customer_id int8, -- идентификатор заказчика
  order_created_date DATE, -- дата создания заказа
  order_completion_date DATE, -- дата выполнения заказа
  order_status VARCHAR, -- статус выполнения заказа (created, in progress, delivery, done)
  load_dttm timestamp NOT NULL,  -- дата и время загрузки
    CONSTRAINT orders_pk PRIMARY KEY (order_id),
    CONSTRAINT orders_craftsman_fk FOREIGN KEY (craftsman_id) REFERENCES dwh.d_craftsman(craftsman_id) ON DELETE restrict,
    CONSTRAINT orders_customer_fk FOREIGN KEY (customer_id) REFERENCES dwh.d_customer(customer_id) ON DELETE restrict,
    CONSTRAINT orders_product_fk FOREIGN KEY (product_id) REFERENCES dwh.d_product(product_id) ON DELETE restrict
); 
COMMENT ON TABLE dwh.f_order IS 'таблицы факта "Заказы"';
COMMENT ON COLUMN dwh.f_order.order_id IS 'таблицы факта "Заказы"';