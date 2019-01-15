create database LeieveTea

drop table Customer
drop table Employee
drop table Schedule
drop table Coupon
drop table ReceiveOrder
drop table ShoppingCart
drop table Category
drop table MenuItems
drop table ShoppingCartItem
drop table OrderDetails
drop table PaymentType
drop table position

create table Customer (

	CustomerID      int identity(1, 1)    not null
	Constraint PK_Customer primary key clustered,
	FirstName       varchar(50)  not null,
	LastName        varchar (50)  not null,
	Address       Varchar(100)    not null,
    City          Varchar(50)     not null,
    Province      char(2)         not null
	 Constraint CK_ValidProvince Check (Province like'[A-Z][A-Z]'),
	Email         varchar         not null
	 Constraint	CK_validCustomerEmail check (email like '%@%.%'),
	PostalCode    char(7)         not null
	 Constraint CK_PostalCode Check (PostalCode Like '[A-Z][0-9][A-Z] [0-9][A-Z][0-9]'),
	Phone          Varchar(14)    not null
	   Constraint CK_CustomervalidPhone Check (Phone Like '([0-9][0-9][0-9])[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]'),
	Points         int           not null,

)

create table Employee (

	EmployeeID          int identity(1, 1)      not null
	Constraint PK_Employee primary key clustered,
	FirstName       varchar(50)  not null,
	LastName        varchar (50)  not null,
	DateHired        datetime      not null,
	DateReleased     datetime          not null,
	Phone          Varchar(14)    not null
	Constraint CK_EmployeevalidPhone Check (Phone Like '([0-9][0-9][0-9])[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]'),
)

create table Schedule (

	ScheduleID        Int  identity(1, 1)          not null
	Constraint PK_Schedule primary key clustered,
	EmployeeID        int            not null
	Constraint FK_ScheduleToEmployee references Employee (EmployeeID),
	StartTime        datetime        not null,
	EndTime          dateTime        not null,
)

create table Coupon (
	
	CouponID      int identity(1, 1)    not null
	Constraint PK_Coupon primary key clustered,
	CouponName     varchar(50)   not null,
	Discount       int         not null,
	Active         bit         not null,
)

create table ReceiveOrder (
	
	OrderID           int identity(1, 1)    not null
	Constraint PK_ReceiveOrder primary key clustered,
	CustomerID        int       not null
	Constraint FK_ReceiveorderToCustomer references Customer (CustomerID),
	EmployeeID        int       not null
	Constraint FK_ReceiveorderToEmployee references Employee (EmployeeID),
	CouponID          int       not null
	Constraint FK_ReceiveorderToCoupon references Coupon (CouponID),
	FirstName       varchar(50)  not null,
	OrderDate         datetime  not null,
	Address       Varchar(100)    not null,
    City          Varchar(50)     not null,
    Province      char(2)         not null
	 Constraint CK_Vaprovince Check (Province like'[A-Z][A-Z]'),
	Email         varchar         not null
	Constraint	CK_validReceiveOrderEmail check (email like '%@%.%'),
	PostalCode    char(7)         not null
	 Constraint CK_PoCo Check (PostalCode Like '[A-Z][0-9][A-Z] [0-9][A-Z][0-9]'),
	Phone          Varchar(14)    not null
	Constraint CK_ReceiveOrdervalidPhone Check (Phone Like '([0-9][0-9][0-9])[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]'),
	DeliveryType   varchar(20)    not null,
	GST            money          not null,
	DeliveryFee     money             not null,
	PaymentType        money          not null,         
)


Create table ShoppingCart (

		ShoppingCartID     int identity(1, 1)             not null
		Constraint PK_ShoppingCart primary key clustered,
		EmployeeID         int             not null
		Constraint FK_ShoppingCartToEmployee references Employee (EmployeeID),
		CustomerID         int             not null
		Constraint FK_ShoppingCartToCustomer references Customer (CustomerID),
		CreatedOn          datetime        not null,
		UpdatedOn          datetime        not null,
)
create table Category (

	CategoryID       int identity(1, 1)   not null
	Constraint PK_Category primary key clustered,
	Description           varchar(50)   not null,
)

create table  MenuItems (
	
	MenuItemID     int identity(1, 1)   not null
	Constraint PK_MenuItems primary key clustered,
	Description    varchar(50)    not null,
	SellingPrice   money          not null,
	CategoryID     int            not null
	Constraint FK_MenuItemsToCategory references Category (CategoryID),
	Active         bit            not null,
)

create table ShoppingCartItem (

	ShoppongCartItemID    int  identity(1, 1)  not null
	Constraint PK_ShoppingCartItem primary key clustered,
	ShoppingCartID        int      not null
	Constraint FK_ShoppingCartItemToShoppingCart references ShoppingCart (ShoppingCartID),
	MenuItemID           int       not null
	Constraint FK_ShoppingCartItemToMenuItem references MenuItems (MenuItemID),
	Quantity              int       not null,
)

create table OrderDetails (

	OrderDetailID         int  identity(1, 1)     not null
	Constraint PK_OrderDetails primary key clustered,
	OrderID               int       not null
	Constraint FK_OrderDetailsToReceiveOrder references ReceiveOrder (OrderID),
	MenuItemID           int        not null
	Constraint FK_OrderDetailsToMenuItem references MenuItems (MenuItemID),
	SellingPrice        money       not null,
	Qty                  int        not null,
)

create table PaymentType (

	PaymentTypeID          int  identity(1, 1)       not null
	Constraint PK_PaymentType primary key clustered,
	Description           varchar(50)      not null,
)


create table position (

	PositionID        Int   identity(1, 1)       not null
	Constraint PK_position primary key clustered,
	Description       varchar(50)   not null,
	OpenOrNot               bit          not null,
)


insert into Category  (Description)
values ('MILK TEA SERIES')
insert into Category  (Description)
values ('MATCHA SERIES')
insert into Category  (Description)
values ('COCOA SERIES')
insert into Category  (Description)
values ('CHEESE FOAM SERIES')
insert into Category  (Description)
values ('FRESH FRUIT TEA SERIES')
insert into Category  (Description)
values ('LEMONADE SERIES')
insert into Category  (Description)
values ('SLUSH AND SMOOTHIE')


insert into MenuItems(Description,SellingPrice,CategoryID,Active)
values ('Classic Milk Tea', 4.75,4,1)
insert into MenuItems(Description,SellingPrice,CategoryID,Active)
values ('Oreo Milk Tea', 5.25,4,1)
insert into MenuItems(Description,SellingPrice,CategoryID,Active)
values ('Cake Milk Tea', 5.25,4,1)
insert into MenuItems(Description,SellingPrice,CategoryID,Active)
values ('Milk Tea with Cheese Foam', 5.25,4,1)
insert into MenuItems(Description,SellingPrice,CategoryID,Active)
values ('Red Bean Milk Tea', 5.25,4,1)

insert into MenuItems(Description,SellingPrice,CategoryID,Active)
values ('Taro Milk Tea', 4.75,4,1)
insert into MenuItems(Description,SellingPrice,CategoryID,Active)
values ('Coconut Milk Tea', 4.75,4,1)
insert into MenuItems(Description,SellingPrice,CategoryID,Active)
values ('Strawberry Milk Tea', 4.75,4,1)
insert into MenuItems(Description,SellingPrice,CategoryID,Active)
values ('Honeydew Milk Tea',4.75,4,1)
insert into MenuItems(Description,SellingPrice,CategoryID,Active)
values ('Mango Milk Tea', 4.75,4,1)




