update Customer set Phone=030-0074321 where Id='6';

select * from Customer;

select * from Customer Inner join Product on Customer.Id= Product.SupplierId where Phone = -74291 ;

select * from Customer where Country != 'London';
