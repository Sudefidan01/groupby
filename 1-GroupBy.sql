--Group by
--Sql sorguları içerisinde bir kolona bağlı kalınarak verileri gruplama işlemi yapmamızı sağlar
--Genellikle where ifadesi ile order by arasına yazılır
--Gruplama işlemi yaptığımızda select ifadesi içerisinde * ile tüm verileri listeleyemezsiniz
--Mutlaka gruplanan kolon ismini belirtmeniz gerekmektedir
--Diğer kolonları direkt olarak kullanamazsınız
--Hazır metodlar ile işlem yapıp listeleyebilirsiniz

--Syntax
--Select<gruplananKolon> , <hazırmetod'lar>
--from <tablo>
--Group by <kolon>

--Örnek
--Hangi kategoride kaç adet ürünüm var

select
	
	(select
		CategoryName
	from Categories
	where Categories.CategoryID=Products.CategoryID
	) as CatgeroyName,
	COUNT(Products.ProductID) as Amount
from Products
group by Products.CategoryID
order by Amount asc