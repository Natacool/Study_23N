--1.Вывести телефоны всех поставщиков, кроме тех, что из Germany и France.

SELECT Phone
FROM [Suppliers]
where
Country not in ('France', 'Germany'); 

--2.Добавить два произвольных товара.

Insert into Products (ProductName, SupplierID, CategoryID, Unit, Price)
Values
 ('New Food 1', '', '', '', ''),
 ('New Food 2', '', '', '', '');

--3.Удалить поставщиков из USA и Germany.

DELETE FROM Suppliers
WHERE
	Country IN ('USA', 'Germany');

--4.Вывести все товары до 20 EUR из категорий 3 и 6 по убыванию цены.

SELECT *
FROM [Products]
where 
CategoryID in (3, 6)
and 
Price <=20
Order by Price DESC;


--5.Вывести номера трех последних заказов.

SELECT OrderID
FROM [Orders]
ORDER BY OrderDate ASC
Limit 3;