--04.07.2023


--Вывести клиентов из Germany, у которых в имени есть вхождение a, и клиентов из France, у которых в имени есть вхождение b

SELECT CustomerName, Country
FROM Customers
WHERE
Country='Germany' and CustomerName Like '%a%'
or
Country='France' and CustomerName Like '%b%';

--Вывести два самых дешевых товара, названия которых заканчиваются на u.

SELECT ProductName, Price
FROM [Products]
where
ProductName Like '%u'
Order by Price ASC
Limit 2;

--Применить постоянную скидку к товарам из категорий 1 и 3, причем:
--для категории 1 - скидка 29%
--для категории 3 - 0.5%

UPDATE Products
SET
Price=CASE
	   WHEN CategoryID=1 THEN Price * .71
       WHEN CategoryID=3 THEN Price * .995
       Else Price
    END;

--Вывести данные о ???компаниях-перевозчиках???, /replaced by [Suppliers] / причем скрыть номера телефонов тех компаний,
--которые из Australia (проекция: название_компании, номер_телефона)

CASE
    When Country='Australia' Then ''
    ELSE Phone
 	END As Phone
FROM [Suppliers];

--Вывести города клиентов не из Germany и города поставщиков не из USA

SELECT City FROM Customers
WHERE Country!='Germany'
UNION 
SELECT City FROM Suppliers
WHERE Country!='USA';
