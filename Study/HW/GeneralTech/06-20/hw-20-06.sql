--1. 10 типовых бизнес-процессов, а также их соответствие по CRUD.

--Менеджмент персонала 
--					Обучение персонала READ
--					Оформление персонала CREATE
-- 					Подбор персонала READ
--					Проведение аттестации персонал UPDATE
--					Увольнение персонала UPDATE
--Логистика
-- 		Снабжение CREATE
--		Управление закупкой READ
--		Выдача товара со склада UPDATE
--		Приемка на склад CREATE
--		Корректировка графика доставки UPDATE



--2.Вывести название и стоимость товаров от 20 до 200 EUR.

SELECT ProductName, Price
FROM [Products]
where
	Price between 20 and 200
    order by Price;

--3.Вывести товары от поставщиков 2 и 4 в порядке убывания цены.

SELECT 
FROM [Products]
    where
    SupplierID=2
    or
    SupplierID=4
    order by Price DESC;

--4.Вывести товары, добавив поле "ценасоскидкой" в 12.5%.

SELECT *, 
Price * .875 AS Price_disc
FROM [Products];

--5.У поставщиков 3 и 5 изменить тел/номера на произвольные значения.

UPDATE Suppliers
SET
Phone='00000'
where
SupplierID=3
or
SupplierID=5;

