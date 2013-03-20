create table "employees" ("name" varchar(32), "department" varchar(32), "salary" decimal(5,2))
create table "departments" ("name" varchar(32), "country" varchar(32))
create table "customers" ("name" varchar(32), "country" varchar(32))
create table "products" ("name" varchar(32), "amount" integer, "price" decimal(22,4))
create table "orders" ("customer" varchar(32), "department" varchar(32), "product" varchar(32), "quantity" integer, "created" timestamp not null default '0000-00-00 00:00:00')
insert into "employees" ("name", "department", "salary") values('Smith', 'American Fruits', cast('10.500' as decimal(5,2)))
insert into "employees" ("name", "department", "salary") values('Jones', 'English Fruits', cast('6.300' as decimal(5,2)))
insert into "employees" ("name", "department", "salary") values('Müller', 'German Fruits', cast('8.020' as decimal(5,2)))
insert into "employees" ("name", "department", "salary") values('Meier', 'German Fruits', cast(NULL as decimal(5,2)))
insert into "employees" ("name", "department", "salary") values('Schulze', 'German Fruits', cast('6.001' as decimal(5,2)))
insert into "departments" ("name", "country") values('American Fruits', 'us')
insert into "departments" ("name", "country") values('English Fruits', 'en')
insert into "departments" ("name", "country") values('German Fruits', 'de')
insert into "customers" ("name", "country") values('John', 'us')
insert into "customers" ("name", "country") values('George', 'en')
insert into "customers" ("name", "country") values('Ringo', 'en')
insert into "customers" ("name", "country") values('Otto', 'de')
insert into "customers" ("name", "country") values('Liesel', 'de')
insert into "customers" ("name", "country") values(NULL, 'de')
insert into "customers" ("name", "country") values('Fritz', NULL)
insert into "products" ("name", "amount", "price") values('Apples', 2, 1.50)
insert into "products" ("name", "amount", "price") values('Bananas', 3, 2.7446785)
insert into "products" ("name", "amount", "price") values('Oranges', 5, cast(NULL as decimal(22,4)))
insert into "products" ("name", "amount", "price") values('Nothing', NULL, cast(NULL as decimal(22,4)))
insert into "orders" ("customer", "department", "product", "quantity", "created") values('Big', 'American Fruits', 'Apples', 1, current_timestamp)
insert into "orders" ("customer", "department", "product", "quantity", "created") values('Large', 'German Fruits', 'Bananas', 1, current_timestamp)
insert into "orders" ("customer", "department", "product", "quantity", "created") values('Huge', 'German Fruits', 'Oranges', 2, current_timestamp)
insert into "orders" ("customer", "department", "product", "quantity", "created") values('Good', 'German Fruits', 'Apples', 2, {ts '2012-06-01 15:52:25'})
insert into "orders" ("customer", "department", "product", "quantity", "created") values('Bad', 'English Fruits', 'Oranges', 3, {ts '2012-06-01 16:31:24'})