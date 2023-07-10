 --(280223)// hw from 29.06.2023


--Вывести информацию о трех самых дорогих товарах не из China (проекция: названиетовара,
-- ценатоваравusd, названиепоставщика, странапоставщика)

SELECT ProductName, Price*1.1 AS Price_usd, SupplierName, Country  
FROM [Products]
Join Suppliers On Products.SupplierID = Suppliers.SupplierID 
where
 Country!= 'China'
 Order by Price_usd DESC
 Limit 3;


--Вывести страны клиентов и поставщиков (за исключением USA)

SELECT Country
FROM [Customers]
where
Country !='USA'
Union
SELECT Country
FROM [Suppliers]
where
Country !='USA';

--Вывести названия проданных товаров

SELECT Distinct ProductName
FROM [Products]
Left Join OrderDetails on OrderDetails.ProductID = Products.ProductID;