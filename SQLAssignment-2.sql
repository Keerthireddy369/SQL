
  select * from Customer where Country='Germany';

  select FirstName+LastName from Customer;

  select * from Customer where Phone>0 ;

  select Id,FirstName,LastName,City,Country,Phone from Customer where FirstName like '_U%';

  select * from OrderItem where UnitPrice >10 and UnitPrice<20 ;

  select * from Ordeer Inner join Customer on Ordeer.CustomerId= Customer.Id ;

   select * from Ordeer Inner join OrderItem on Ordeer.Id= OrderItem.OrderId where UnitPrice >10 and UnitPrice <20 ;

    select * from Ordeer Inner join OrderItem on Ordeer.Id= OrderItem.OrderId order by OrderDate ;

	select * from Supplier where CompanyName='Excotic Liquids';

	select * from Product Inner join Supplier on Product.SupplierId= Supplier.Id where CompanyName='Excotic Liquids' ;

	select AVG(Quantity) from OrderItem ;

	select CompanyName,Country from Supplier ;

	                    