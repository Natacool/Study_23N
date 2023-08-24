--hw from 22.08.2023 (28.03.2023)

--1 Удалить всех клиентов из China и Brazil

DELETE FROM Customers
Where
Customers.Country in('China', 'Brazil');

--2 Вывести название категории, где самая высокая средняя стоимость 

SELECT
	Categories.CategoryName,
	AVG(Price) AS avg_price
FROM Products
Join Categories on Products.CategoryID=Categories.CategoryID
GROUP by Products.CategoryID
Order by avg_price DESC
Limit 1;

--3 Вывести названия трех товаров, которые продаются хуже всего

SELECT
	Products.ProductName,
	COUNT(*) as min_sold
FROM Products
Join OrderDetails on OrderDetails.ProductID=Products.ProductID
Group by Products.ProductID 
Order by min_sold ASC
	Limit 3;

--4 Вывести название одного перевозчика, у которого меньше всего заказов

SELECT 
	Shippers.ShipperName,
	count(*) as min_quantity
FROM Shippers
JOIN Orders ON Shippers.ShipperID=Orders.ShipperID
GROUP by Shippers.ShipperID
Order by min_quantity ASC
Limit 1;

--5 Вывести товары, добавив поле "цена со скидкой" (на англ.) в 15.5%

SELECT
	Products.ProductID,
	Products.ProductName,
    Products.Price * .85 as Price_discount_15.5_perc
FROM Products;