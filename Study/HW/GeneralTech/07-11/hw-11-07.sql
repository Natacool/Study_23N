--HW from 11.07.2023 (280323)

--Вывести информацию о заказах клиентов не из Germany и не из China

SELECT *
FROM [Orders]
Join Customers on Customers.CustomerID = Orders.CustomerID
Where
	Customers.Country not in ('Germany', 'China');


--Вывести два самых дорогих товара из категории Beverages

SELECT *
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

SELECT OrderID 
FROM [Orders]
Join Shippers on Orders.ShipperID = Shippers.ShipperID
Where
CustomerID=10
and
ShipperName='Federal Shipping';


--Вывести два самых дорогих напитка из UK

SELECT  Description, Price, Country
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

SELECT  Country
FROM [Products]
Join Categories on Products.CategoryID=Categories.CategoryID
Join Suppliers on Products.SupplierID=Suppliers.SupplierID
Where
	Categories.CategoryName='Beverages';
