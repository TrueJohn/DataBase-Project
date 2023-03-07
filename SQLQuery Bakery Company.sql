Create database Bakery
go
use Bakery
go

------------------------------
LABORATORY 2
------------------------------

drop table if exists Customers
CREATE TABLE Customers(
    CustomerID int NOT NULL primary key,
    Customer_Name varchar(255),
    Customer_Email varchar(255),
    Customer_Phone_number varchar(255),
	Customer_Address varchar(255),
);
drop table if exists Employee
CREATE TABLE Employee(
	EmployeeID int NOT NULL primary key,
	Employee_Name varchar(255),
	Employee_Email varchar(255),
	Employee_phone_number varchar(255),
	Employee_Address varchar(255),
	Employee_Salary money,
);

drop table if exists Recipe
CREATE TABLE Recipe(
	RecipeID int NOT NULL primary key,
	Recipe_Name varchar(255),
	Recipe_Description varchar(255),
	Recipe_Number_of_Ingredients int,

);


drop table if exists Ingredients
CREATE TABLE Ingredients (
	IngredientsID int not null primary key,	
	RecipeID int not null foreign key references Recipe(RecipeID),
	Ingredients_Name varchar(255),
	Quantity int Not NULL,
);

drop table if exists Product
CREATE TABLE Product(
	ProductID int NOT NULL primary key,
	Product_Name varchar(255),
	Product_Quantity int,
	RecipeID int foreign key references Recipe(RecipeID),
);


drop table if exists Orders
CREATE TABLE Orders(
	OrderID int NOT NULL primary key,
	CustomerId int foreign key references Customers(CustomerID),
	ProductID int foreign key references Product(ProductID),
	Quantity int,
);
drop table if exists Schedule
CREATE TABLE Schedule (
	ScheduleID int not null primary key,
	EmployeeID int foreign key references Employee(EmployeeID),
	ManagerID int ,
	Monday varchar(100) ,
	Tuesday varchar(100) ,
	Wednesday varchar(100) ,
	Thursday varchar(100) ,
	Friday varchar(100) ,
);

drop table if exists Manager
CREATE TABLE Manager(
	ManagerID int not null primary key,
	ScheduleID int foreign key references Schedule(ScheduleID),
	Name varchar(255),
	Email varchar(255),
	Phone varchar(255),
	Salary money,
);


drop table if exists Bakery
CREATE TABLE Bakery(
	BakeryID int not null primary key,
	ManagerID int foreign key references Manager(ManagerID),
	Name varchar(255),
	City varchar(255),
);

drop table if exists BakeryStores
CREATE TABLE BakeryStores(
	BakeryStoresID int not null primary key,
	ProductID int foreign key references Product(ProductID),
	BakeryID int foreign key references Bakery(BakeryID),
	Stock int,
);




-----------------------------------

LABORATORY 3 

-----------------------------------


insert into Bakery(BakeryId,Name,City) values(1,'Bakery1','Cluj-Napoca')

--insert data into bakery

insert into Employee(EmployeeID,Employee_Name,Employee_Email,Employee_phone_number,Employee_Address)
values(1,'John','john@mail.com','0700','Cluj-City')

--insert data into employee

insert into Employee(EmployeeID,Employee_Name,Employee_Email,Employee_phone_number,Employee_Address)
values(2,'Vlad','vlad@mail.com','0701','Cluj-Somewhere')

--insert data into employee

insert into Employee(EmployeeID,Employee_Name,Employee_Email,Employee_phone_number,Employee_Address)
values(3,'Ana','ana@mail.com','0702','Near-Cluj')

--insert data into employee

insert into Employee(EmployeeID,Employee_Name,Employee_Email,Employee_phone_number,Employee_Address)
values(4,'Maria','maria@mail.com','0703','In the Cluj')

--insert data into employee

insert into Employee(EmployeeID,Employee_Name,Employee_Email,Employee_phone_number,Employee_Address)
values(5,'Vlad','vlad2@mail.com','0705','Bacau')

--insert data into employee

insert into Employee(EmployeeID,Employee_Name,Employee_Email,Employee_phone_number,Employee_Address)
values(6,'Radu','radu@mail.com','0706','Cluj')

--insert data into employee

insert into Employee(EmployeeID,Employee_Name,Employee_Email,Employee_phone_number,Employee_Address)
values(7,'David','david@mail.com','0707','Bucuresti')

--insert data into employee

insert into Employee(EmployeeID,Employee_Name,Employee_Email,Employee_phone_number,Employee_Address)
values(8,'Elena','elena123@mail.com','0708','Alba')

--insert data into employee



insert into Recipe(RecipeID,Recipe_Name,Recipe_Description,Recipe_Number_of_Ingredients)
values(1,'Sanwich','description1',2)

--insert data into Recipe

insert into Recipe(RecipeID,Recipe_Name,Recipe_Description,Recipe_Number_of_Ingredients)
values(2,'Sanwich','description2',4)

--insert data into Recipe

insert into Recipe(RecipeID,Recipe_Name,Recipe_Description,Recipe_Number_of_Ingredients)
values(3,'Pie','description3',7)

--insert data into Recipe

insert into Recipe(RecipeID,Recipe_Name,Recipe_Description,Recipe_Number_of_Ingredients)
values(4,'Pancake','description4',8)

--insert data into Recipe

insert into Recipe(RecipeID,Recipe_Name,Recipe_Description,Recipe_Number_of_Ingredients)
values(5,'Bread','description5',4)

--insert data into Recipe

insert into Recipe(RecipeID,Recipe_Name,Recipe_Description,Recipe_Number_of_Ingredients)
values(6,'Pizza','description6',3)

--insert data into Recipe


insert into Product(ProductID,Product_Name,Product_Quantity,RecipeID)values(1,'Pie',2,1)

--insert data into Products

insert into Product(ProductID,Product_Name,Product_Quantity,RecipeID)values(2,'Cake',1,2)

--insert data into Products

insert into Product(ProductID,Product_Name,Product_Quantity,RecipeID)values(3,'Grain Bread',1,3)

--insert data into Products

insert into Product(ProductID,Product_Name,Product_Quantity,RecipeID)values(4,'Croissant',1,4)

--insert data into Products

insert into Product(ProductID,Product_Name,Product_Quantity,RecipeID)values(5,'Sadwich',1,5)

--insert data into Products






insert into BakeryStores(BakeryStoresID,ProductId,BakeryId,Stock)
values(1,1,1,20)

--insert data into BakeryProducts

insert into BakeryStores(BakeryStoresID,ProductId,BakeryId,Stock)
values(2,2,1,10)

--insert data into BakeryProducts


insert into BakeryStores(BakeryStoresID,ProductId,BakeryId,Stock)
values(3,3,1,9)

--insert data into BakeryProducts

insert into BakeryStores(BakeryStoresID,ProductId,BakeryId,Stock)
values(4,4,1,7)

--insert data into BakeryProducts




insert into Ingredients(IngredientsID,RecipeID,Ingredients_Name,Quantity) values(1,1,'Flour',1)

--insert data into Ingredients

insert into Ingredients(IngredientsID,RecipeID,Ingredients_Name,Quantity) values(2,2,'Salad',2)

--insert data into Ingredients

insert into Ingredients(IngredientsID,RecipeID,Ingredients_Name,Quantity) values(3,3,'Drojdie',3)

--insert data into Ingredients

insert into Ingredients(IngredientsID,RecipeID,Ingredients_Name,Quantity) values(4,4,'Onion',4)

--insert data into Ingredients

insert into Ingredients(IngredientsID,RecipeID,Ingredients_Name,Quantity) values(5,5,'Tomatoes',5)

--insert data into Ingredients




insert into Customers(CustomerID,Customer_Name,Customer_Email,Customer_Phone_number,Customer_Address)
values(1,'Mark','mark@mail.com','0412345678','Brasov')

--insers data into Customers

insert into Customers(CustomerID,Customer_Name,Customer_Email,Customer_Phone_number,Customer_Address)
values(2,'Ema','ema@mail.com','0512345678','Timisoara')

--insers data into Customers

insert into Customers(CustomerID,Customer_Name,Customer_Email,Customer_Phone_number,Customer_Address)
values(3,'Laura','laura@mail.com','0612345678','Constanta')

--insers data into Customers

insert into Orders(OrderID,CustomerId,ProductID,Quantity)
values(1,1,1,2)

--insers data into Orders

insert into Orders(OrderID,CustomerId,ProductID,Quantity)
values(2,2,2,3)

--insers data into Orders

insert into Orders(OrderID,CustomerId,ProductID,Quantity)
values(3,3,1,5)

--insers data into Orders



-----------------------------------------------------

update Employee
set Employee_Name='Jonny'
where Employee_Name='John' or Employee_Name='Vlad'

--update Employee_Name to Johhny where Employee_Name is John or Vlad

select * from Employee

delete from Employee
where Employee_Name='Vlad' and Employee_phone_number='0701' and Employee_Email='vlad@mail.com'

--delete Employee where Employee_Name=Vlad and Employee_phone_number=0701 and Employee_Email=vlad

select * from Employee
where Employee_Name like '%a%'
union
select * from Employee
where Employee_Name like '%b'
--select employes 


select * from Employee
where Employee_Name like '%a%'
intersect
select * from Employee
where Employee_Name like 'j%'


select * from Employee
where Employee_Name like '%a%'
except
select * from Employee
where Employee_Name like 'v%'


select Products.Product_Name 
from Products 
inner join Ingredients
on ProductID=IngredientsID
--select product name

select Products.Quantity 
from Products 
inner join Ingredients
on ProductID=IngredientsID
--select product quantity

select Products.RecipeID 
from Products 
inner join Ingredients
on ProductID=IngredientsID
--select product recipeid



select Products.Product_Name 
from Products 
left outer join Ingredients
on ProductID=IngredientsID
--select product name

select Products.Quantity 
from Products 
left outer join Ingredients
on ProductID=IngredientsID
--select product quantity

select Products.RecipeID 
from Products 
left outer join Ingredients
on ProductID=IngredientsID
--select product recipe id

select Products.Product_Name 
from Products 
right outer join Ingredients
on ProductID=IngredientsID
--select  product name

select Products.Quantity 
from Products 
right outer join Ingredients
on ProductID=IngredientsID
--select product quantity

select Products.RecipeID 
from Products 
right outer join Ingredients
on ProductID=IngredientsID
--select product recipe id


select Products.Product_Name 
from Products 
full join Ingredients
on ProductID=IngredientsID
--select product Ingredients


select Products.Quantity 
from Products 
full join Ingredients
on ProductID=IngredientsID
--select product Quantity


select Products.RecipeID 
from Products 
full join Ingredients
on ProductID=IngredientsID
--select product recipe id 


select Products.Product_Name 
from Products 
full join Ingredients
on ProductID=IngredientsID
group by Product_Name
having COUNT(Products.Quantity)<15
--select the product name grouped by product name and having products quantity bigger the 15


select Products.Quantity, COUNT(Ingredients.IngredientsID) as quantity 
from Products 
full join Ingredients
on ProductID=IngredientsID
group by Products.Quantity
having COUNT(Ingredients.IngredientsID)>0

--select the product name grouped by product name and having products quantity lower the 15


select Employee_Name 
from Employee
--select the employee name from the employee table

select distinct Employee_name 
from Employee
--select the distinct employee name from the employee table

select Employee_Address,Employee_Name 
from Employee
order by Employee_Address
--select the adress of the employee and the name of the employee orderd by the employee adress


select Employee_Email,Employee_Name
from Employee
order by Employee_Email
--select the email of the employee and the name of the employee orderd by the employee email

--select den,um,pret,count(f.id) as nrfacturi
--from prod p ij fact f on p.id = f.id_p
--where {p.pret>10} tot ce putem punem in where
--group by den,um,pret
--having count(f.id) >1000 {and p.pret>10}


------------------------------
LABORATORY 4 PROCEDURES
------------------------------
--DO PROCEDURE 1

create procedure do_procedure_1
as
begin
	alter table dbo.Employee
	add Employee_Age Int
end 
-----------------------------

exec do_procedure_1

select * from Employee

--add an column Recipe_description to the table Recipe

-----------------------------

--UNDO PROCEDURE 1

create procedure undo_procedure_1
as
begin
	alter table dbo.Employee
	drop column Employee_Age
end 

-----------------------------

exec undo_procedure_1

select * from Employee

--remove the column Recipe_description from table Recipe

-----------------------------

--DO PROCEDURE 2

create procedure do_procedure_2
as
begin
	alter table dbo.Employee
	add constraint age_20 default 20
	for age
end 

-----------------------------

exec do_procedure_2

select * from Employee

--add a default constraint

-----------------------------

--UNDO PROCEDURE 2

create procedure undo_procedure_2
as
begin
	alter table dbo.Employee
	drop constraint age_20
end 

-----------------------------

exec undo_procedure_2

select * from Employee

--remove a default constraint

-----------------------------

--DO PROCEDURE 3

create procedure do_procedure_3
as
begin
	create table SpecialProduct(
	SpecialProductID int not null primary key,
	SpecialProduct_Name varchar(255),
	SpecialProduct_Description varchar(255),
	SpecialProduct_Quantity float,
	OrderID int not null ,
	)
end

----------------------------

exec do_procedure_3

select * from SpecialProduct

-----------------------------

--UNDO PROCEDURE 3

create procedure undo_procedure_3
as
begin
	drop table dbo.SpecialProduct
end


-----------------------------

exec undo_procedure_3

select * from SpecialProduct

--remove a table


-----------------------------

--DO PROCEDURE 4

create procedure do_procedure_4
as
begin
	alter table SpecialProduct
	add constraint OrderID foreign key(OrderID) references Orders(OrderID)
end

-----------------------------

exec do_procedure_4

select * from SpecialProduct

--create a foreign key constraint

-----------------------------

--UNDO PROCEDURE 4

create procedure undo_procedure_4
as
begin
	alter table SpecialProduct
	drop constraint OrderID
end


-----------------------------

exec undo_procedure_4

select * from SpecialProduct

--remove a foreign key constraint

-----------------------------

-----------------------------

drop table if exists Data_base_version
CREATE TABLE Data_base_version(
    Current_version int
);

---create a data_base_version table
-----------------------------

insert into Data_base_version(Current_version)values(0)

--insert the current version in the data_base_version_table
-----------------------------

create procedure do_all_procedures(@wanted_version int)
as
begin
	declare @current_version int
	select @current_version = Current_version from dbo.Data_base_version

	--print 'The current version is '+cast(@current_version as varchar(10))

	print concat('The current version is ',@current_version,'.')

	if @wanted_version >4 or @wanted_version <0
	 begin
		print 'Version does not exist.'
		return;
	 end
	if @wanted_version=@current_version
	begin
	 print 'The wanted version and the current version are the same.'
	 return;
	end

	while @current_version != @wanted_version
	 begin
	  if @current_version < @wanted_version
	   begin
	   if @current_version = 0
	    begin
		exec do_procedure_1
		set @current_version = 1
		end
	   else if @current_version = 1
	    begin
		exec do_procedure_2
		set @current_version = 2
		end
	   else if @current_version = 2
	    begin
		exec do_procedure_3
		set @current_version = 3
		end
	   else if @current_version = 3
	    begin
		exec do_procedure_4
		set @current_version = 4
		end
	  end

	  if @current_version > @wanted_version
	   begin
	     if @current_version = 1
		  begin
			exec undo_procedure_1
			set @current_version = 0
		  end
		 else if @current_version = 2
		  begin
			exec undo_procedure_2
			set @current_version = 1
		  end
		 else if @current_version = 3
		  begin
			exec undo_procedure_3
			set @current_version = 2
		  end
		 else if @current_version = 4
		  begin
			exec undo_procedure_4
			set @current_version = 3
		  end
	    end
	  end
	
	update dbo.Data_base_version
	set Current_version = @current_version

	print 'The data base was updated'
	print concat('The current version is now:',@current_version)


end

-----------------------------------------------


exec do_all_procedures @wanted_version = 3

select Current_version from Data_base_version

----------------------------------------------

LABORATORY 5

----------------------------------------------
create function checkAge(@age int)
 returns int as
	begin

	declare @age_between_20_and_40 int

	 if @age>20 and @age<=40
	  set @age_between_20_and_40 = 1
	 else
	  set @age_between_20_and_40 = 0
	 
	return @age_between_20_and_40

	end
go
--this function checks if the value of the age is between 20 and 40
----------------------------------------------
create function checkQuantity(@quantity int)
 returns int as
	begin

	declare @quantity_between_0_and_3 int

	 if @quantity>=0 and @quantity<=3
	  set @quantity_between_0_and_3 = 1
	 else
	  set @quantity_between_0_and_3 = 0
	 
	return @quantity_between_0_and_3

	end
go

--this function checks if the value of the quantity is between 20 and 40

-----------------------------------------------

create function checkText(@text varchar(50))
 returns bit as
	begin
		declare @the_text_contains_only_letters bit
		if @text LIKE '[a-z]%[a-z]'
			set @the_text_contains_only_letters=1
		else
			set @the_text_contains_only_letters=0
		return @the_text_contains_only_letters
	end
go

--this function checks if the text is only contains letters

----------------------------------------------
create function checkTextOnlyNumbers(@text varchar(50))
 returns bit as
	begin
		declare @the_text_contains_only_numbers bit
		if @text LIKE '[0-9]%[0-9]'
			set @the_text_contains_only_numbers=1
		else
			set @the_text_contains_only_numbers=0
		return @the_text_contains_only_numbers
	end
go

--this function checks if the text is only contains numbers


----------------------------------------------

create function checkLength20(@text varchar(50))
 returns bit as
	begin
		declare @the_text_contains_at_most_20_characters bit
		if LEN(@text)<=20
			set @the_text_contains_at_most_20_characters=1
		else
			set @the_text_contains_at_most_20_characters=0
		return @the_text_contains_at_most_20_characters
	end
go

--this function checks if the text has at most 20 characters

----------------------------------------------
create function checkLength10(@text varchar(50))
 returns bit as
	begin
		declare @the_text_contains_at_most_10_characters bit
		if LEN(@text)<=10
			set @the_text_contains_at_most_10_characters=1
		else
			set @the_text_contains_at_most_10_characters=0
		return @the_text_contains_at_most_10_characters
	end
go

--this function checks if the text has at most 10 characters

----------------------------------------------
create function checkIngrediensNumberLowerThen10(@IngredientsNumber int)
 returns int as
	begin
		declare @the_recipe_contains_at_most_10_ingredients int
		if @IngredientsNumber<=10
			set @the_recipe_contains_at_most_10_ingredients=1
		else
			set @the_recipe_contains_at_most_10_ingredients=0
		return @the_recipe_contains_at_most_10_ingredients
	end
go

----------------------------------------------

create procedure addManager @ManagerID int, @ScheduleID int,@name varchar(50), @email varchar(50),@phone varchar(50),@salary money
	AS
	Begin
	if dbo.checkTextOnlyNumbers(@phone)=1 and dbo.checkLength10(@phone)=1 and dbo.checkText(@name)=1 
		begin
			INSERT INTO Manager(ManagerID,ScheduleID,Name,Phone,Salary) 
			Values (@ManagerID, @ScheduleID,@name,@phone,@salary)
			print Concat('Values Added:',@ManagerID,',', @ScheduleID,',',@ScheduleID,',',@name,',',@phone,',',@salary,'.')
			select * from Manager
		end
	else
		begin
			print 'The parameters are not valid'
			select * from Manager
		end
	end
go
go

--store procedure for the insert operation that inserts a manager into the database
--if the values are valid
----------------------------------------------
create procedure addCustomer @CustomerID int, @Customer_Name varchar(50),@Customer_Email varchar(50), @Customer_Phone varchar(50),@Customer_Address varchar(50)
	AS
	Begin
	if dbo.checkTextOnlyNumbers(@Customer_Phone)=1 and dbo.checkLength10(@Customer_Phone)=1 and dbo.checkText(@Customer_Name)=1 
		begin
			INSERT INTO Customers(CustomerID,Customer_Name,Customer_Email,Customer_Phone_number,Customer_Address) 
			Values (@CustomerID,@Customer_Name,@Customer_Email,@Customer_Phone,@Customer_Address)
			print Concat('Values Added:',@CustomerID,',', @Customer_Name,',',@Customer_Email,',',@Customer_Phone,',',@Customer_Address,'.')
			select * from Customers
		end
	else
		begin
			print 'The parameters are not valid'
			select * from Customers
		end
	end
go
go

----------------------------------------------

--store procedure for the insert operation that inserts a manager into the database
--if the values are valid

----------------------------------------------

exec addCustomer 4,'Bob','bob@mail.com','0712345678','Somewhere'

delete from Customers
where CustomerID=1

select * from Customers

----------------------------------------------
create procedure addRecipe @RecipeID int, @Recipe_Name varchar(50),@Recipe_description varchar(50), @Recipe_Number_of_Ingredients int
	AS
	Begin
	if dbo.checkIngrediensNumberLowerThen10(@Recipe_Number_of_Ingredients)=1 and dbo.checkText(@Recipe_Name)=1 
		begin
			INSERT INTO Recipe(RecipeID,Recipe_Name,Recipe_Description,Recipe_Number_of_Ingredients) 
			Values (@RecipeID,@Recipe_Name,@Recipe_Description,@Recipe_Number_of_Ingredients) 
			print Concat('Values Added:',@RecipeID,',', @Recipe_Name,',',@Recipe_Description,',',@Recipe_Number_of_Ingredients,'.')
			select * from Recipe
		end
	else
		begin
			print 'The parameters are not valid'
			select * from Recipe
		end
	end
go
go
---------------------------------------------
--store procedure for the insert operation that inserts a recipe into the database
--if the values are valid
---------------------------------------------

exec addRecipe 7,'Croissant','good stuf',20

---------------------------------------------
delete from Recipe
where RecipeID=7


select * from Recipe
---------------------------------------------

select * from Orders

select * from Product

select * from Customers

delete from Orders
where OrderID=


---------------------------------------------

create view viewAllOrdersProductStockQuantity
as
SELECT o.Quantity,p.Product_Quantity,b.Stock
from Orders o inner join Product p on o.ProductID=p.ProductID
			  inner join BakeryStores b on p.ProductID= b.ProductID
	 
go

--view all orders , product and stock amount

---------------------------------------------

create table RecipeCopy(RecipeID int primary key, Recipe_Name varchar(255), Recipe_Description varchar(255),Recipe_Number_of_Ingredients int)


---------------------------------------------


CREATE TRIGGER ADD_Recipe ON Recipe FOR INSERT AS
	BEGIN
		INSERT INTO RecipeCopy(RecipeID,Recipe_Name,Recipe_Description,Recipe_Number_of_Ingredients)
		SELECT RecipeID,Recipe_Name,Recipe_Description,Recipe_Number_of_Ingredients
		FROM inserted
	END


---------------------------------------------


create table Logs(TriggerDate date,TriggerType varchar(50),NameAffectedTable varchar(50),NoAMDRows int)


insert into Logs(TriggerDate, TriggerType, NameAffectedTable, NoAMDRows)
values (GETDATE(), 'INSERT', 'RecipeCopy', @@ROWCOUNT)

select* from Logs

delete from Logs

----------------------------------------------

CREATE TRIGGER ADD_Recipe2 ON Recipe FOR INSERT AS
	BEGIN
		INSERT INTO RecipeCopy(RecipeID,Recipe_Name,Recipe_Description,Recipe_Number_of_Ingredients)
		SELECT RecipeID,Recipe_Name,Recipe_Description,Recipe_Number_of_Ingredients
		FROM inserted
		insert into Logs(TriggerDate, TriggerType, NameAffectedTable, NoAMDRows)
		values (GETDATE(), 'INSERT', 'RecipeCopy', @@ROWCOUNT)
	END

----------------------------------------------

CREATE TRIGGER Delete_Recipe2 ON Recipe FOR DELETE AS
	BEGIN
		
		insert into Logs(TriggerDate, TriggerType, NameAffectedTable, NoAMDRows)
		values (GETDATE(), 'Delete', 'RecipeCopy', @@ROWCOUNT)
	END

----------------------------------------------
CREATE TRIGGER Update_Recipe2 ON Recipe FOR UPDATE AS
	BEGIN
		
		insert into Logs(TriggerDate, TriggerType, NameAffectedTable, NoAMDRows)
		values (GETDATE(), 'Update', 'RecipeCopy', @@ROWCOUNT)
	END

----------------------------------------------

IF EXISTS (SELECT name FROM sys.indexes WHERE name = N'N_idx_Credits')
DROP INDEX N_idx_Credits ON Recipe;
GO




CREATE NONCLUSTERED INDEX N_idx_Credits ON Recipe(Recipe_Number_of_Ingredients);

--non index cluster sqlquery

----------------------------------------------

select * from Recipe

----------------------------------------------

select * from Recipe where Recipe_Number_of_Ingredients>4

----------------------------------------------
--non clustered index scan+key
select * from Employee where Employee_Name='Vlad'
