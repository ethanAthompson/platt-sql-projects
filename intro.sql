-- PROJECT: SQL INTRODUCTION TO TABLES
-- DESCRIPTION:
-- AUTHOR: Ethan Thompson
-- DATE: Today

--  CREATE A NEW DATABASE CALLED intro 
create database intro;

--  LETTING SQL USE THE DATABASE CALLED intro
use intro;

--  CREATED A NEW TABLE CALLED intro 
create table intro(
    --  THIS TABLE CONTAINS 9 FIELDS
    ID int primary key auto_increment,
    FirstName varchar(20),
    LastName varchar(20),
    Address varchar(40),
    City varchar(40),
    State varchar(5),
    ZipCode varchar(5)
);

--  DESCRIBING ALL THE INFO IN THE TABLE
describe intro;

-- INSERT values INTO THE intro TABLE

--  ID 1
insert into intro (FirstName,LastName,Address,City,State,ZipCode) values("Stephen","Angelella","2788 Marion Street","Bellmore","NY","11710");
--  ID 2
insert into intro (FirstName,LastName,Address,City,State,ZipCode) values("Allen","Attaway", "PO Box 643", "Piscataway", "NJ", "08855");
--  ID 3
insert into intro (FirstName,LastName,Address,City,State,ZipCode) values("Baron", "Ballester", "186 Lexington Avenue", "Westwood","NJ","07675");
--  ID 4
insert into intro (FirstName,LastName,Address,City,State,ZipCode) values("George", "Bartels", "77 Allen Road Rockville", "Centre", "NY", "11570");
--  ID 5
insert into intro (FirstName,LastName,Address,City,State,ZipCode) values("Michael", "Bartolome", "228 South 17th Avenue", "Manville", "NJ" ,"08835");
--  ID 6
insert into intro (FirstName,LastName,Address,City,State,ZipCode) values("Hugh", "Bentley", "7 Holly Treee Lane" ,"East Islip", "NY", "11730");
--  ID 7
insert into intro (FirstName,LastName,Address,City,State,ZipCode) values("Robert", "Bielsky", "931 Peninsula Blvd" ,"Woodmere" ,"NY" ,"11598");
--  ID 8
insert into intro (FirstName,LastName,Address,City,State,ZipCode) values("George", "Botsch", "511 Rockaway Street" ,"West Islip" ,"NY" ,"11795");
--  ID 9
insert into intro (FirstName,LastName,Address,City,State,ZipCode) values("Duane", "Burrell", "22 Van Buskirk Rd" ,"Teaneck", "NJ" ,"07666");
--  ID 10
insert into intro (FirstName,LastName,Address,City,State,ZipCode) values("Michael", "Caldarella", "108 Kemah-Mecca Lake Road", "Newton", "NJ" ,"07860");

-- SELECT ALL THE FIELDS FROM the intro TABLE
select * from intro;

--  DELETING THE DATABASE BY USING THE KEYWORD DROP
drop database intro;