Create Table [dbo].[Customers]
(
[ID] int Identity Primary Key,
[NAME] VARCHAR(30) 
)
Insert Into Customers (NAME)
Values
('Max'),('Pavel'),('Ivan'),('Leonid')

Create Table [dbo].[Orders]
(
[ID] int Identity Primary Key,
[CustomersId] int References Customers(ID) 
)
Insert Into Orders (CustomersId)
Values
(2),(4)
Select [Name] From Customers as cust Left Join
Orders as ord On cust.ID = ord.CustomersId 
Where
ord.CustomersId is null