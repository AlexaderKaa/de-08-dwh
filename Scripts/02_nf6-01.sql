SELECT marketplace, craftsman, craftsman_status, product, create_dttm
FROM nf_lesson.source_5nf;

Взгляните на таблицы из предыдущего урока — мы обогатили их колонкой  create_dttm, чтобы БД стала хронологической. Изучите таблицы nf_lesson.marketplace_craftsman_5nf, nf_lesson.marketplace_product_5nf, nf_lesson.craftsman_product_5nf из предыдущего урока ещё раз. 
Какие таблицы можно дополнительно декомпозировать?

nf_lesson.marketplace_craftsman_5nf и nf_lesson.craftsman_product_5nf
Из этих таблиц можно вынести сущность craftsman_status