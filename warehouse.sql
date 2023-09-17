-- Author: Ethan Thompson
-- Project: Warehouse
-- Due April 21, 2:00PM

create database warehouse; -- creates db

use warehouse; -- uses db

create table customerOrders( -- table for customer's orders
	id int primary key auto_increment,
	companyId varchar(5),
	companyName varchar(255),
	companyAdress varchar(255),
	companyEmail varchar(255)
);

create table companyOrders( -- table for company's orders
	orderId int primary key auto_increment,
	companyId varchar(5),
	orderCode varchar(5),
	dateOfOrder datetime
);

describe customerOrders;
describe companyOrders;

insert into customerOrders(companyId, companyName, companyAdress, companyEmail) values 
-- the 10 companies
("FB","Facebook ","1601 S California Ave, Palo Alto, CA 94304","facebook@fb.org"),
("AMZN","Amazon ","410 Terry Ave N, Seattle, WA 98109","amazon@amzn.org"),
("AAPL","Apple ","451 E Altamonte Drive, Altamonte Springs, FL 32701","apple@aapl.org"),
("NFLX","Netflix ","100 Winchester Cir, Goose Creek, SC 29445","netflitx@nflx.org"),
("GOOG","Alphabet ","1600 Amphitheatre Pkwy, Mountain View, CA 94043","alphabet@goog.org"),
("DDD","3D Systems ","333 Three D Systems Cir, Rock Hill, SC 29730","3dsystems@ddd.org"),
("PRFT","Perficient, Inc ","555 Maryville University Dr Ste 600, Saint Louis, MO 63141","perficient@prft.org"),
("EMKR","EMCORE Corporation ","2015 Chestnut St, Alhambra, CA 91803","emcore@emkr.org"),
("MSFT","Microsoft Corp ","107 Valley Ct, Longwood, Fl 32779","microsoft@msft.org"),
("NVDA","Nvidia Corp ","2200 N Alafaya Trl, Orlando, Fl 32826","nvidia@nvda.org");

insert into companyOrders(companyId, ordercode, dateOfOrder) values 
-- 10 orders per order type -> custom dates? 
("FB", "Oc1", NOW()),
("FB", "Oc2", NOW()),
("FB", "Oc3", NOW()),
("FB", "Oc4", NOW()),
("FB", "Oc5", NOW()),
("FB", "Oc6", NOW()),

("AMZN", "Oc1", NOW()),
("AMZN", "Oc2", NOW()),
("AMZN", "Oc3", NOW()),
("AMZN", "Oc4", NOW()),
("AMZN", "Oc5", NOW()),
("AMZN", "Oc6", NOW()),

("AAPL", "Oc1", NOW()),
("AAPL", "Oc2", NOW()),
("AAPL", "Oc3", NOW()),
("AAPL", "Oc4", NOW()),
("AAPL", "Oc5", NOW()),
("AAPL", "Oc6", NOW()),

("NFLX", "Oc1", NOW()),
("NFLX", "Oc2", NOW()),
("NFLX", "Oc3", NOW()),
("NFLX", "Oc4", NOW()),
("NFLX", "Oc5", NOW()),
("NFLX", "Oc6", NOW()),

("GOOG", "Oc1", NOW()),
("GOOG", "Oc2", NOW()),
("GOOG", "Oc3", NOW()),
("GOOG", "Oc4", NOW()),
("GOOG", "Oc5", NOW()),
("GOOG", "Oc6", NOW()),

("DDD", "Oc1", NOW()),
("DDD", "Oc2", NOW()),
("DDD", "Oc3", NOW()),
("DDD", "Oc4", NOW()),
("DDD", "Oc5", NOW()),
("DDD", "Oc6", NOW()),

("PRFT", "Oc1", NOW()),
("PRFT", "Oc2", NOW()),
("PRFT", "Oc3", NOW()),
("PRFT", "Oc4", NOW()),
("PRFT", "Oc5", NOW()),
("PRFT", "Oc6", NOW()),

("EMKR", "Oc1", NOW()),
("EMKR", "Oc2", NOW()),
("EMKR", "Oc3", NOW()),
("EMKR", "Oc4", NOW()),
("EMKR", "Oc5", NOW()),
("EMKR", "Oc6", NOW()),

("MSFT", "Oc1", NOW()),
("MSFT", "Oc2", NOW()),
("MSFT", "Oc3", NOW()),
("MSFT", "Oc4", NOW()),
("MSFT", "Oc5", NOW()),
("MSFT", "Oc6", NOW()),

("NVDA", "Oc1", NOW()),
("NVDA", "Oc2", NOW()),
("NVDA", "Oc3", NOW()),
("NVDA", "Oc4", NOW()),
("NVDA", "Oc5", NOW()),
("NVDA", "Oc6", NOW());

-- 1. All orders in the order table grouped by company name sorted by order code
select
	orderId as "Order Id",
	companyName as "Customer Name",
	orderCode as "Order Code",
	dateOfOrder as "Date of order",
	count(*) as "Order Quantity"
from companyOrders
inner join customerOrders using (companyId) -- joins the two tables with companyId
group by companyName -- groups by company name
order by orderCode; -- sorts by order code 


-- 2. All orders by a specific company ordered by order code
select
	orderId as "Order Id",
	companyName as "Customer Name",
	orderCode as "Order Code",
	dateOfOrder as "Date of order",
	count(*) as "Order Quantity"
from companyOrders
inner join customerOrders using (companyId) -- joins the two tables with companyId
where companyName="Nvidia Corp" -- selects a all orders from the specific company 
order by orderCode; -- oders by orderCode 


-- 3. Display all orders by Specific Order code sorted by company name
select
	orderId as "Order Id",
	companyName as "Customer Name",
	orderCode as "Order Code",
	dateOfOrder as "Date of order",
	count(*) as "Order Quantity"
from companyOrders
inner join customerOrders using (companyId) -- joins customerOrders with related id 
where orderCode="Oc4" -- specifies only the 4th order code
order by companyName; -- sorts query by company name  

-- 4. Display the number of each order code sorted by order code use the count() function
select
	orderId as "Order Id",
	companyName as "Customer Name",
	orderCode as "Order Code",
	dateOfOrder as "Date of order",
	count(*) as "Order Quantity" -- uses the count function to count all the orders
from companyOrders
inner join customerOrders using (companyId) -- connects the tables using related id
-- where orderCode IN ("Oc1", "Oc2") -- checks for orders 
group by companyName -- groups by company name 
order by orderCode; -- sorts by order code 

drop database warehouse; -- removes the db