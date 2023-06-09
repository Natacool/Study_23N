--HW from 15.06.2023 (280223)
 

--Вывести название и стоимость в USD одного самого дорогого проданного товара

SELECT
		Products.ProductName,
    Products.Price * 1.1 AS Price_usd
FROM OrderDetails

JOIN Products ON OrderDetails.ProductID=Products.ProductID

ORDER BY Products.Price DESC
LIMIT 1;

--Вывести два самых дорогих товара из категории Beverages из USA

SELECT *
FROM Products
JOIN Categories ON Products.CategoryID=Categories.CategoryID
JOIN Suppliers ON Products.SupplierID=Suppliers.SupplierID
WHERE 
	Categories.CategoryName='Beverages'
    and
    Suppliers.Country='USA'
	ORDER BY Products.Price DESC
	LIMIT 2;

--Вывести заказы, добавив поле доставлено (или нет), учитывая, что доставлены только 10248 и 10249

SELECT *, 
	CASE
    WHEN OrderID = 10248  THEN 'Delivered'
    WHEN OrderID = 10249  THEN 'Delivered' 
    ELSE 'Not_Delivered'
    END AS Product_Status
FROM Orders;

--Вывести список стран, которые поставляют морепродукты

SELECT DISTINCT Country
FROM Suppliers
JOIN Products ON Suppliers.SupplierID=Products.SupplierID
JOIN Categories ON Products.CategoryID=Categories.CategoryID
WHERE 
	Categories.CategoryName='Seafood';


--Очистить поле ContactName у всех клиентов не из China

UPDATE Customers
SET ContactName=''
WHERE
	NOT Country IN ('China');






	


	











  