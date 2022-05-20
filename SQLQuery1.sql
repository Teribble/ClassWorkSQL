select distinct Product.Brand, COUNT(Product.Quantity) as [Count]
from Store, Product, Accounting, City
where Product.Id = Accounting.Id_Product
and Store.Id = Accounting.Id_Store
and City.Id = Store.IdCity
and City.Name = N'Rostov'
and Product.Name in (N'Сырок',N'Йогурт',N'Творог',N'Молоко')
group by Product.Brand

select Product.Brand, SUM(Product.Quantity) as [Count]
from Store, Product, Accounting, City
where Product.Id = Accounting.Id_Product
and Accounting.Id_Store = Store.Id
and Store.IdCity = City.Id
group by Product.Brand, Product.Quantity