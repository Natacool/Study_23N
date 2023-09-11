
--1 Описать таблицу shippers с исп. механизма Constraints

CREATE TABLE IF NOT EXISTS shipment ( 
 shipment_id int primary key auto_increment, 
 company_name varchar(64) not null, 
 company_address varchar(64) not null,  
 country varchar(64) not null,   
 phone varchar(64) not null unique, 
 created_at timestamp default current_timestamp, 
 is_blocked bool default false 
 );


--2 Вывести заказы, сделанные с 1 мая 2022 по 20 мая 2022 

SELECT *
FROM orders
WHERE
	created_at BETWEEN '2022-05-01' AND '2022-05-20';


--3 Описать схему БД "онлайн-тестирование" с помощью инструмента онлайн-проектирования БД.
--Необходимо предусмотреть регистрацию пользователя и выбор им тем для прохождения тестирования.

https://dbdiagram.io/d/64ff553902bd1c4a5e5cf503
 