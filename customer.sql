--  PROJECT: SQL TABLE ASSIGNMENT 2
--  DESCRIPTION: Create a database that will store customer information in a table.
--  AUTHOR: ETHAN THOMPSON
--  DATE: 1/5/2023

--  CREATING DATABASE CALLED CUSTOMER
CREATE DATABASE customer;

--  USING THE DATABASE CALLED CUSTOMER
USE customer;

--  CREATED A TABLE WITH 9 FIELDS AND DATATYPES
CREATE TABLE customerData(
    --  varchar is similar to TEXT
    id  INTEGER PRIMARY KEY AUTO_INCREMENT, -- increments inserted data automatticly
    lastName    varchar(50),
    firstName    varchar(50),
    Street    varchar(50),
    City    varchar(50),
    State_   varchar(50),
    ZipCode    varchar(50),-- State is a key word
    BirthDate    Date, -- (YYYY-MM-DD)
    TelephoneNumber varchar(50)
);

--  CREATING INDEX FOR FIELD 2
CREATE INDEX idx_lastname
--  GIVES LASTNAME AN INDEX 
ON customerData(lastName);

--  CREATED INDEX FOR FIELD 6
CREATE INDEX idx_State_
--  GIVES STATE AN INDEX
ON customerData(State_);

--  DESCRIBES TABLE IN TERMINAL
DESC customerData;

--  INSERTING DATA INTO THE TABLE
insert into customerData(lastName,firstName,Street,City,State_,ZipCode,BirthDate,TelephoneNumber)
-- VALUES GOING INTO THE TABLE
values
("Grace","Jefferson","7995 Arch Street","Winton","Delaware","33569","1927-01-07","(706) 275-8163"),
("Ehsan","Zimmerman","991 Pennsylvania Street","Gundagai","North Carolina","99504","1949-05-15","(603) 875-4265"),
("George","Malone","781 Applegate Street","Maroochydore","South Carolina","49441","1990-05-29","(440) 967-7528"),
("Lee","Guerrero","129 Wayne Street","Gold Coast","Wyoming","28601","1948-06-17","(231) 498-2072"),
("Beetle","Santos","659 Stillwater Street","Castlemaine","Maine","43062","1917-12-09","(708) 467-0604"),

("Georgiana","Roach","380 Arcadia Avenue","Windsor","Arizona","99504","1992-03-23","(573) 359-0118"),
("George","Wilkins","775 Wall Lane","Newcastle","Missouri","02919","1923-08-19","(864) 578-3497"),
("Sadie","Gregory","586 Fawn Ave","Ulverstone","Vermont","35173","1927-10-27","(707) 459-4558"),
("Safiyyah","Velazquez","875 3rd Lane","Bacchus Marsh","Texas","45039","1925-05-04","(607) 562-3518"),
("Haider","Vela","761 West Kingston Road","Mareeba","Idaho","90505","1920-04-05","(910) 842-8047"),

("Freddie","Morgan","754 North Rockland Street","Toowoomba","New Jersey","33510","1980-12-31","(251) 947-4511"),
("Fred","Velez","8299 Glen Creek Street","Narrogin","Minnesota","11554","1971-11-01","(813) 909-0596"),
("Jonah","Riley","8916 Tallwood Street","Mandurah","Oregon","78501","1975-11-11","(704) 283-7074"),
("Jone","Gray","7200 Wakehurst Street","Broome","Maryland","19063","1962-10-06","(720) 350-4490"),
("Elaine","Salas","523 Miles Street","Balranald","New York","45040","1949-03-15","(814) 362-4215"),

("Max","Byrne","1 Sherman Street","Melbourne","Alabama","46307","2004-03-19","(402) 873-4660"),
("Jamal","Elliott","8577 Rockledge Street","Gladstone","Pennsylvania","40165","1926-10-27","(412) 828-7282"),
("Zackary","Sullivan","408 Manor Station Street","Tennant Creek","Hawaii","28625","1989-11-30","(949) 715-6996"),
("Zack","Watts","216 Airport Drive","Emerald","New Hampshire","29576","1964-02-14","(937) 386-0019"),
("Kristina","Roberson","7096 Airport Drive","Singleton","Washington","60120","1950-01-31","(678) 945-0360");

--  SELECTING ALL THE DATA INSERTED FROM THE TABLE
SELECT * FROM customerData;

--  drops the database customer
DROP DATABASE customer;