﻿--CREATE TABLE City
--(
--	[Id] INT PRIMARY KEY IDENTITY(1,1),
--	[Name] NVARCHAR(max) NOT NULL,
--)

--CREATE TABLE Store
--(
--	[Id] INT PRIMARY KEY IDENTITY(1,1),
--	IdCity INT FOREIGN KEY REFERENCES City(Id),
--	Adress NVARCHAR(max) NOT NULL,
--)

--CREATE TABLE Product
--(
--	[Id] INT PRIMARY KEY IDENTITY(1,1),
--	[Name] NVARCHAR(max) NOT NULL,
--	Brand NVARCHAR(max) NOT NULL,
--	Quantity INT NOT NULL,
--	Price FLOAT NOT NULL
--)

--CREATE TABLE Accounting
--(
--	[Id] INT PRIMARY KEY IDENTITY(1,1),
--	Id_Store INT FOREIGN KEY REFERENCES Store(Id),
--	Id_Product INT FOREIGN KEY REFERENCES Product(Id)
--)

--INSERT INTO City VALUES ('Ростов-на-Дону');
--INSERT INTO City VALUES ('Москва');

--INSERT INTO Store VALUES (2, N'Суворовский 12/7');
--INSERT INTO Store VALUES (2, N'Коммунестический 89/9');
--INSERT INTO Store VALUES (1, N'Марьянва 11/9');
--INSERT INTO Store VALUES (2, N'Вишневского 90');

--INSERT INTO Product VALUES (N'Молоко', N'Донская корова',43,189.2);
--INSERT INTO Product VALUES (N'Сырок', N'Донская корова',122,32);
--INSERT INTO Product VALUES (N'Кефир', N'Донская корова',23,40);
--INSERT INTO Product VALUES (N'Йогурт', N'Донская корова',96,23);
--INSERT INTO Product VALUES (N'Сыр', N'Донская корова',189,49.90);
--INSERT INTO Product VALUES (N'Плавленный сыр', N'Донская корова',1123,19.9);
--INSERT INTO Product VALUES (N'Творог', N'Донская корова',745,34.1);
--INSERT INTO Product VALUES (N'Паштет', N'ОАО Паштетный завод',745,34.1);

--INSERT INTO Accounting VALUES (1,1);
--INSERT INTO Accounting VALUES (1,2);
--INSERT INTO Accounting VALUES (1,4);
--INSERT INTO Accounting VALUES (1,3);
--
--INSERT INTO Accounting VALUES (2,8);
--INSERT INTO Accounting VALUES (2,7);
--INSERT INTO Accounting VALUES (2,6);
--INSERT INTO Accounting VALUES (2,5);

-- Изменить поля в таблице
--UPDATE Product SET Brand = N'ОАО Ягода Руси' WHERE id = 7;
--UPDATE Product SET Brand = N'ОАО Калуга-Маркет' WHERE id = 6;
--UPDATE Product SET Brand = N'ОАО Преднистровье' WHERE id = 5;
--UPDATE Product SET Brand = N'ОАО Веселый молочник' WHERE id = 4;
--UPDATE Product SET Brand = N'ОАО Простоквашино' WHERE id = 3;
--UPDATE Product SET Brand = N'ОАО Закулесье' WHERE id = 2;
--UPDATE Product SET Brand = N'ОАО Закулесье' WHERE id = 1;

--UPDATE Accounting SET Id_Store = 3 WHERE Id=3;
--UPDATE Accounting SET Id_Store = 4 WHERE Id=4;
--UPDATE Accounting SET Id_Store = 3 WHERE Id=5;
--INSERT INTO Accounting VALUES (4,8);

--SELECT * FROM City;
--SELECT * FROM Store;
--SELECT * FROM Product;
--SELECT * FROM Accounting;


-- Вывести все склады с названием городов
-- AS Это макрос сокращение
--SELECT * FROM City;
--SELECT * FROM Store;
--SELECT [Name], [Adress] FROM City AS C,Store AS S WHERE C.Id = S.IdCity


-- Вывести адресс склада и название товара, который там находится
--SELECT * FROM Store;
--SELECT * FROM Product;
--SELECT Adress, Name
--FROM Store AS S, Product AS P, Accounting AS A
--WHERE S.Id = A.Id_Store AND P.Id = A.Id_Product


-- Вывести какой бренд относится к какому городу (DISTINCT - Убрать повторяющиеся поле)
--SELECT * FROM City;
--SELECT * FROM Product;
--SELECT * FROM Store;
--SELECT * FROM Accounting;
--
--SELECT DISTINCT City.Name,Product.Brand
--FROM City, Store, Product, Accounting
--WHERE City.Id = Store.Id AND Store.Id = Accounting.Id_Store AND Product.Id = Accounting.Id_Product

-------------------------------------------------------------------------
-- Вывести название города и название товара, только по ростову на дону
-- Вывести адрес города и название товара и только, которых больше 10 штук на складе
-------------------------------------------------------------------------
--SELECT * FROM City;
--SELECT * FROM Product;
--SELECT * FROM Store;
--SELECT * FROM Accounting;
---------------------------------------------------------------------------
--SELECT City.Name, Product.Name
--FROM City, Product, Store, Accounting
--WHERE City.Id = Store.IdCity 
--AND Store.Id = Accounting.Id_Store 
--AND Product.Id = Accounting.Id_Product 
--AND City.Name = 'Rostov';
---------------------------------------------------------------------------
--SELECT DISTINCT City.[Name], Store.Adress, Product.Name, Product.Quantity
--FROM City, Product, Store, Accounting
--WHERE City.Id = Store.IdCity
--AND Store.Id = Accounting.Id_Store
--AND Product.Quantity > 100 AND Product.Quantity < 150
-- После каждого энд, это новый фильтр к тому, что получилось до
-------------------------------------------------------------------------

-- Вывести 