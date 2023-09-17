-- PROJECT: Hotel Reservation 
-- DESCRIPTION: tracks hotel room occupancy
-- AUTHOR: Ethan Thompson
-- DATE: Today


-- create new db
create database hotel;

-- use the db
use hotel;

-- make table
create table roomStatus(

    ID integer primary key auto_increment,
    RoomNumber varchar(50),
    Occupied varchar(50),
    Housekeeping varchar(50),
    Type varchar(50)

);

-- indexed RoomNumber: easy search
CREATE index index_RoomNumber
on roomStatus(RoomNumber);

-- registers table into sql
desc roomStatus;

-- inserts data into roomStatus
insert into roomStatus(RoomNumber, Occupied, Housekeeping, Type)
values
("300","Y","N","Suite"),
("310","N","N","Suite"), 
("475","Y","Y","King"), 
("477","N","Y","Queen"), 
("578","Y","Y","Double"),
("1200","Y","Y","Single"), 
("1201","Y","Y","Single"),
("1000","N","N","Queen"),
("1100","Y","Y","Double"),
("344","Y","N","Suite"),
("299","N","N","King"),
("888","Y","Y","Queen"),
("932","N","N","King"),
("1501","Y","Y","Queen"),
("399","N","Y","Suite"),
("1700","Y","Y","King"),
("1766","Y","Y","Double"),
("1753","N","N","Double");

-- Display all Kings that are clean (room #, type)
SELECT RoomNumber, Type 
FROM roomStatus 
where Type = 'King' and Housekeeping = "Y";

-- Display all rooms that occupied (room #, type, housekeeping)
SELECT RoomNumber, Type, Housekeeping, Occupied
FROM roomStatus 
where Occupied = "Y";

-- Display all dirty rooms (room #, occupied, type)
SELECT RoomNumber, Occupied, Type 
FROM roomStatus 
where Occupied = "N";

-- Display all suites (entire record except ID)
SELECT RoomNumber, Occupied, Housekeeping, Type 
FROM roomStatus;

-- Display all rooms sorted by room number and room type (entire record except ID) 
SELECT RoomNumber, Occupied, HouseKeeping, Type 
FROM roomStatus 
ORDER BY RoomNumber and Type;

-- Display all unoccupied rooms that need cleaning (room #, type)
SELECT RoomNumber, Type, Occupied 
FROM roomStatus 
where Occupied = "N";


-- removes db
drop database hotel;