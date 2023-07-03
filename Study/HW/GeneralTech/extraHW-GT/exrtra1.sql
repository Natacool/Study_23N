    --В рамках БД "песочница" напишите след/запросы:

--Вывести стоимость и название двух самых дешевых товаров из Germany:

SELECT Price, ProductName
FROM [Products]
Join Suppliers on Products.SupplierID = Suppliers.SupplierID
where
Suppliers.Country in ('Germany')
Order by Price ASC
Limit 2;

--Вывести ко-во и сред/стоимость товаров из USA

SELECT SUM(Quantity), AVG(Price)
FROM [OrderDetails]
Join Products on OrderDetails.ProductID = Products.ProductID
Join Suppliers on Products.SupplierID = Suppliers.SupplierID
where
Suppliers.Country='USA';

--Вывести ко-во заказов, которое компания Speedy Express доставила в Brazil

SELECT Quantity
FROM [OrderDetails]
Join Orders on OrderDetails.OrderID = Orders.OrderID
Join Shippers on Shippers.ShipperID = Orders.ShipperId
Join Customers on Customers.CustomerId = Orders.CustomerId
where 
Customers.Country in ('Brazil')
and
Shippers.ShipperName = 'Speedy Express';

--Вывести среднюю стоимость проданного в Germany товара

SELECT  AVG(Price)
FROM [Products]
Join OrderDetails on OrderDetails.ProductID = Products.ProductID
Join Orders on OrderDetails.OrderID = Orders.OrderID
Join Customers on Orders.CustomerID = Customers.CustomerID
where
Customers.Country='Germany';

--У всех поставщиков не из Germany очистить номер телефона    

UPDATE Suppliers
SET Phone=''
where
Country != 'Germany';