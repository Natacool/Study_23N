--hw from 08.08.2023

--Вывести ко-во поставщиков не из UK и не из China

SELECT
	COUNT(*) as total_not_UK_China_suppliers
FROM Suppliers
Where
	not Country in ('UK', 'China');

--Вывести среднюю/MAX/MIN стоимости и ко-во товаров из категорий 3 и 5

SELECT
	AVG(Price) as avg_price,
    MAX(Price) as max_price,
    MIN(Price) as min_price,
    COUNT(*) as total_products
FROM Products
Where
	CategoryID in (3, 5);

--Вывести общую сумму проданных товаров

SELECT
	SUM(Products.Price * OrderDetails.Quantity) as SUM_total_sold_Products
FROM OrderDetails
JOIN Products ON OrderDetails.ProductID=Products.ProductID;

--Вывести ко-во стран, которые поставляют напитки

SELECT 
	COUNT(*) as Country_Suppliers_Beverages
FROM Products
Join Suppliers on Products.SupplierID=Suppliers.SupplierID
Join Categories on Products.CategoryID=Categories.CategoryID
Where
	Categories.CategoryName='Beverages';

--Вывести сумму, на которую было отправлено товаров клиентам в USA

SELECT
	SUM(Products.Price * OrderDetails.Quantity) as SUM_soldProducts_USA
FROM Orders
Join Products on OrderDetails.ProductID=Products.ProductID
Join OrderDetails on Orders.OrderID=OrderDetails.OrderID
Join Customers on Orders.CustomerID=Customers.CustomerID
Where
	Customers.Country = 'USA';