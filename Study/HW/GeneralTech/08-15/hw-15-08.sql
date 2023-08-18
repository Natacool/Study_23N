--hw from 15.08.2023

--1. Найти мин/стоимость товаров для каждой категории

SELECT
CategoryName,
MIN(Price) as min_price
FROM Products
Join Categories on Products.CategoryID=Categories.CategoryID
GROUP by Categories.CategoryID
Order by min_price;

--2. Вывести ТОП-3 стран по количеству доставленных заказов

SELECT
	Customers.Country,
    COUNT(*) as total_delivered_orders
FROM Orders
Join OrderDetails on Orders.OrderID=OrderDetails.OrderID
Join Customers on Orders.CustomerID=Customers.CustomerID
Group by Customers.CustomerID
Order by total_delivered_orders DESC
Limit 3;

--3. Вывести названия категорий, в которых более 10 товаров

SELECT
	Categories.CategoryName,
	COUNT(*) as total_products
FROM Products
Join Categories on Products.CategoryID=Categories.CategoryID
GROUP by Products.CategoryID
Having 
total_products >= 10
Order by total_products DESC;

--4. Очистить тел/номер поставщикам из USA

UPDATE Suppliers
Set
Phone=''
Where
Country='USA';

--5. Вывести имена и фамилии (и ко-во заказов) менеджеров, у которых ко-во заказов менее 15

SELECT 
	Employees.LastName,
	Employees.FirstName,
	COUNT(*) as total_orders
FROM Orders
Join Employees on Employees.EmployeeID = Orders.EmployeeID
GROUP by Employees.EmployeeID
Having
total_orders <=15
Order by total_orders DESC;


--6. Вывести товар, который находится на втором месте по ко-ву заказов

SELECT
Products.ProductName,
	Products.ProductID,
    COUNT(*) as total_ordered_products
FROM Products
Join OrderDetails on OrderDetails.ProductID=Products.ProductID
Group by Products.ProductID 
Order by total_ordered_products DESC
	Limit 1 offset 1;




