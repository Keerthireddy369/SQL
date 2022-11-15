create database KeerthiReddy369;
use KeerthiReddy369
create table Customer
(Id int primary key,
FirstName nvarchar(40) NOT NULL,
LastName nvarchar(40),
City nvarchar(40),
	Country nvarchar (40),
	Phone nvarchar(40)
	)
	create index CutomerName on Customer(FirstName,LastName) ;
	create table Ordeer
(Id int primary key,
OrderDate datetime NOT NULL,
OrderNumber nvarchar(10),
CustomerId int references Customer(Id),
	TotalAmount decimal(12,2),
	)
	create index OrderCustomerId on Ordeer(CustomerId);
	create index OrderOrderDate on Ordeer(OrderDate);
	create table Supplier
	(Id int primary key ,
	CompanyName nvarchar(40),
ContactName nvarchar(50),
ContactTitle nvarchar(40),
City nvarchar(40),
	Country nvarchar (40),
	Phone nvarchar(40),
	Fax nvarchar (30),
	)
	create table Product
	(Id int primary key ,
	ProductName nvarchar(50),
SupplierId int references Supplier(Id),
UnitPrice decimal(12,2),
package nvarchar(30),
	IsDiscontinued bit

)
create table OrderItem
(Id int primary key,
OrderId int references Ordeer(Id),
ProductId int references Product(Id),
UnitPrice decimal(12,2),
Quantity int
	)
	create index OrderItemOrderID on OrderItem(OrderId);
	create index OrderItemProductID on OrderItem(ProductId);
	create index ProductSupplierID on Product(SupplierId);
	create index ProductName on Product(ProductName);
	create index SupplierName on Supplier(ContactName);
	create index SupplierCountry on Supplier(Country);

	insert into Customer values ('1','Keerthi','Reddy','Rajahmundry','India','9122335562');
	insert into Customer values ('2','Satya','Veni','Hyderabad','India','9122567877');
	insert into Customer values ('3','Srinivasa','Reddy','Vijayawada','Russia','9876532135');
	insert into Customer values ('4','Pravallika','Chowdary','Banglore','Italy','9122567689');
	insert into Customer values ('5','Satya','naidu','Berlin','Germany','9872567877');
	insert into Customer values ('6','Sandeep','Reddy','Hamburg','Germany','6789567877');
	insert into Customer values ('7','Subbu','james','cologne','Germany','8567567877');
	insert into Customer values ('8','Somi','Kangaru','Italy','London','5678567877');
	insert into Customer values ('9','Vamsi','james','cologne','Germany','');
	insert into Customer values ('10','Lucky','Kangaru','Italy','London','');

	update Customer set Phone ='91223' where Id='1' ;
	update Customer set Phone ='91225' where Id='2' ;
	update Customer set Phone ='98765' where Id='3' ;
	update Customer set Phone ='91228' where Id='4' ;
	update Customer set Phone ='98725' where Id='5' ;
	update Customer set Phone ='67895' where Id='6' ;
	update Customer set Phone ='' where Id='7' ;
	update Customer set Phone ='' where Id='8' ;
	update Customer set Phone ='' where Id='9' ;
	update Customer set Phone ='91256' where Id='10' ;

	insert into Ordeer values ('11',2022/06/26 ,'1600123456','6','1600.09');
	insert into Ordeer values ('21',2022/10/09,'1600123457','2','1687.09');
	insert into Ordeer values ('31',2022/03/16,'1600123459','7','3576.00');
	insert into Ordeer values ('41',2021/02/09,'1600123455','3','130.08');
	insert into Ordeer values ('51',2022/05/10,'1600123450','1','156.97');
	insert into Ordeer values ('61',2021/05/11,'1600123451','8','1765.23');

	insert into OrderItem values ('12','11','12351','160.09','3');
	insert into OrderItem values ('21','41','76532','168.09','2');
	insert into OrderItem values ('31','61','98765','356.00','10');
	insert into OrderItem values ('41','21','12576','10.08','6');


	insert into Supplier values ('8688','Excotic Liquids','KSReddy','Manager','Banglore','India','9966888666','+1 123 123 1234');
	insert into  Supplier values ('8655','Excotic Liquids','KSsoium','Manager','chennai','India','9966888666','+1 100 123 1234');
	insert into  Supplier values ('8689',' Liquids','KSReddy','employee','vishaka','India','9966888666','+1 678 123 1234');
	insert into  Supplier values ('8000','Liquids','KSReddy','employee','nellore','India','9966888666','+1 879 123 1234');

	insert into Product values ('12351','seafoods','8688','160.09','Packed','3');
	insert into Product values ('76532','desserts','8655','168.09','notyet','2');
	insert into Product values ('98765','meat','8689','356.09','ontheprocess','10');
	insert into product values ('12576','vegetables','8000','10.09','completed','6');

	select*from Customer
WRITE A QUERY DISPLAYING COUNTRY NAME STARTS WITH A OR I:

select Country from Customer where Country like  'I%';
select Country from Customer where Country like  'A%';


  select FirstName from Customer where FirstName like '__i%';
