--HW from 11.07.2023 (280323)

--Вывести информацию о заказах клиентов не из Germany и не из China

SELECT *
FROM [Orders]
Join Customers on Customers.CustomerID = Orders.CustomerID
Where
	Customers.Country not in ('Germany', 'China');


SELECT *
FROM [Orders]
Where
	CustomerID in (select CustomerID from Customers where Country not in ('Germany', 'China'));


--Вывести два самых дорогих товара из категории Beverages

SELECT  ProductName, CategoryName, Price
FROM [Products]
Join Categories on Products.CategoryID=Categories.CategoryID
Where
	Categories.CategoryName='Beverages'
	ORDER BY Products.Price DESC
	LIMIT 2;


--Удалить поставщиков из China

DELETE FROM Suppliers
Where
Country='China';


--Вывести все заказы клиента 10, которые повезет Federal Shipping

SELECT OrderID as  OrderID_10, ShipperName
FROM [Orders]
Join Shippers on Orders.ShipperID = Shippers.ShipperID
Where
CustomerID=10
and
ShipperName='Federal Shipping';


--Вывести два самых дорогих напитка из UK

SELECT ProductName, Price, Country
FROM [Products]
Join Categories on Products.CategoryID=Categories.CategoryID
Join Suppliers on Products.SupplierID=Suppliers.SupplierID
Where
	Suppliers.Country='UK'
and
	Categories.CategoryName='Beverages'
	ORDER BY Products.Price DESC
	LIMIT 2;


--Вывести страны-поставщики напитков

SELECT  Distinct Suppliers.Country
FROM [Suppliers]
Join Products on Products.SupplierID=Suppliers.SupplierID
Join Categories on Products.CategoryID=Categories.CategoryID
Where
	Categories.CategoryName='Beverages';
