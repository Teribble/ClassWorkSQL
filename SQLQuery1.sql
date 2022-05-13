select COUNT(Store.Adress) as [Склады]
from Store, City, Accounting
where City.Name = N'Rostov'
and City.Id = Store.IdCity
and Store.Id = Accounting.Id_Store

select COUNT(distinct Product.Brand) from Product

select COUNT(distinct Product.Brand) as [Бренды]
from Store, City, Accounting, Product
where City.Name = N'Moscow'
and City.Id = Store.IdCity
and Store.Id = Accounting.Id_Store
and Accounting.Id_Product = Product.Id