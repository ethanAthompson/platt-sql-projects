
-- Author: Ethan Thompson
-- Description: A sport survey database


-- db creation
create database student_athletes;

use student_athletes;


-- student table "each student can play up to 3 different sports."
create table student (
    id int primary key auto_increment, 
    first_name varchar(150),
    last_name varchar(150),
    age varchar(150),
    gender varchar(150),
    class_year varchar(150),
    shop varchar(150),
    sport1 varchar(150),
    sport2 varchar(150),
    sport3 varchar(150) 
);



describe student;    
    
insert into student(first_name, last_name, age, gender, class_year, shop, sport1, sport2, sport3) values
("Sequel", "Jones", "13", "male", "Freshman", "AC", "Football", "Volleyball", "XC"),
("Emma", "Smith", "15", "female", "Senior", "CU", "Track", "Baseball", "Basketball"),
("Michael", "Johnson", "13", "male", "Sophomore", "IT", "Basketball", "N/A", "Baseball"),
("Emily", "Williams", "18", "female", "Sophomore", "AC", "Track", "Basketball", "Softball"),
("Joshua", "Brown", "16", "male", "Senior", "CA", "Track", "Softball", "N/A"),
("Ava", "Jones", "14", "female", "Sophomore", "HC", "Baseball", "Basketball", "Softball"),
("Alexander", "Miller", "17", "male", "Junior", "AU", "Baseball", "Basketball", "Softball"),
("Sophia", "Davis", "15", "female", "Senior", "HC", "Football", "Baseball", "XC"),
("William", "Garcia", "18", "male", "Junior", "EL", "Football", "XC", "Track"),
("Elizabeth", "Rodriguez", "18", "female", "Freshman", "CA", "Baseball", "XC", "Basketball"),
("Matthew", "Wilson", "14", "male", "Freshman", "IT", "Baseball", "Volleyball", "Basketball"),
("Samantha", "Martinez", "17", "female", "Freshman", "CA", "Track", "Softball", "Track"),
("Andrew", "Anderson", "17", "male", "Senior", "EL", "Football", "Basketball", "XC"),
("Natalie", "Taylor", "13", "female", "Freshman", "CU", "Track", "Baseball", "Basketball"),
("David", "Thomas", "17", "male", "Junior", "CU", "Track", "Volleyball", "XC"),
("Alexis", "Hernandez", "15", "female", "Freshman", "PH", "Basketball", "Football", "Track"),
("Aiden", "Moore", "16", "male", "Sophomore", "CA", "Volleyball", "Track", "Softball"),
("Hannah", "Martin", "15", "female", "Junior", "SA", "Track", "Volleyball", "Baseball"),
("Ryan", "Jackson", "15", "male", "Freshman", "AU", "Baseball", "Football", "Track"),
("Ella", "Thompson", "13", "female", "Senior", "IT", "XC", "Softball", "N/A"),
("John", "White", "17", "male", "Junior", "CA", "Volleyball", "Baseball", "N/A"),
("Grace", "Lopez", "14", "female", "Freshman", "AC", "Baseball", "Basketball", "Softball"),
("Elijah", "Lee", "18", "male", "Senior", "EM", "Baseball", "Basketball", "N/A"),
("Brianna", "Gonzalez", "17", "female", "Freshman", "HC", "N/A", "Baseball", "Football"),
("Gabriel", "Harris", "15", "male", "Senior", "AC", "Track", "Basketball", "Baseball"),
("Hailey", "Clark", "13", "female", "Senior", "CU", "Basketball", "Football", "Volleyball"),
("Jonathan", "Lewis", "16", "male", "Freshman", "CU", "Volleyball", "Track", "Softball"),
("Victoria", "Robinson", "15", "female", "Sophomore", "IT", "Basketball", "N/A", "Volleyball"),
("Samuel", "Walker", "13", "male", "Senior", "CA", "Track", "Volleyball", "XC"),
("Lillian", "Perez", "14", "female", "Sophomore", "CU", "N/A", "Baseball", "Basketball"),
("Gavin", "Hall", "18", "male", "Senior", "EM", "Track", "Football", "Baseball"),
("Kaylee", "Young", "14", "female", "Sophomore", "PH", "Track", "Football", "Basketball"),
("Jackson", "Allen", "18", "male", "Freshman", "IT", "Track", "Basketball", "Volleyball"),
("Savannah", "Sanchez", "15", "female", "Sophomore", "AU", "N/A", "Baseball", "Football"),
("Caleb", "Wright", "16", "male", "Senior", "HC", "XC", "Baseball", "Track"),
("Gabriella", "King", "14", "female", "Freshman", "EL", "XC", "N/A", "Baseball"),
("Angel", "Scott", "15", "male", "Sophomore", "PH", "N/A", "Basketball", "Softball"),
("Makayla", "Green", "13", "female", "Junior", "IT", "Volleyball", "N/A", "N/A"),
("Evan", "Baker", "17", "male", "Junior", "PH", "Baseball", "XC", "Track"),
("Riley", "Adams", "17", "female", "Freshman", "PH", "Softball", "Football", "Baseball"),
("Kevin", "Nelson", "14", "male", "Senior", "CU", "XC", "Basketball", "Football"),
("Leah", "Hill", "17", "female", "Sophomore", "IT", "Baseball", "Football", "Softball"),
("Isaiah", "Ramirez", "16", "male", "Junior", "SA", "Baseball", "Football", "Track"),
("Jasmine", "Campbell", "18", "female", "Senior", "EM", "Basketball", "XC", "Volleyball"),
("Landon", "Mitchell", "14", "male", "Sophomore", "CU", "Volleyball", "Football", "Track"),
("Katherine", "Roberts", "16", "female", "Junior", "CA", "N/A", "Basketball", "Volleyball"),
("Lucas", "Carter", "15", "male", "Senior", "SA", "Softball", "Baseball", "Baseball"),
("Brooklyn", "Phillips", "14", "female", "Sophomore", "CU", "XC", "Baseball", "Baseball"),
("Jordan", "Evans", "17", "male", "Freshman", "AU", "Track", "XC", "Basketball"),
("Sydney", "Turner", "16", "female", "Junior", "PH", "Volleyball", "Track", "Football"),
("Aaron", "Torres", "13", "male", "Freshman", "IT", "Volleyball", "Basketball", "Baseball"),
("Kylie", "Parker", "16", "female", "Freshman", "IT", "XC", "Basketball", "Baseball"),
("Thomas", "Collins", "14", "male", "Senior", "PH", "XC", "Volleyball", "Track"),
("Kaitlyn", "Edwards", "18", "female", "Junior", "EM", "Track", "Softball", "XC"),
("Hunter", "Stewart", "13", "male", "Sophomore", "AU", "Baseball", "XC", "Softball"),
("Layla", "Flores", "14", "female", "Freshman", "EM", "Baseball", "Track", "XC"),
("Adrian", "Morris", "15", "male", "Sophomore", "AU", "XC", "N/A", "Volleyball"),
("Kimberly", "Nguyen", "17", "female", "Junior", "HC", "Football", "Softball", "Volleyball"),
("Owen", "Murphy", "17", "male", "Sophomore", "CA", "XC", "Softball", "Track"),
("Jessica", "Rivera", "17", "female", "Freshman", "IT", "Football", "Baseball", "N/A"),
("Jason", "Cook", "17", "male", "Senior", "SA", "Track", "Basketball", "Softball"),
("Alexandra", "Rogers", "18", "female", "Sophomore", "EL", "Softball", "N/A", "Track"),
("Wyatt", "Morgan", "17", "male", "Junior", "PH", "N/A", "Softball", "XC"),
("Madelyn", "Peterson", "14", "female", "Junior", "SA", "N/A", "Football", "Volleyball"),
("Luis", "Cooper", "18", "male", "Sophomore", "AU", "Volleyball", "Basketball", "XC"),
("Mackenzie", "Reed", "13", "female", "Sophomore", "AU", "Softball", "Volleyball", "Basketball"),
("Juan", "Bailey", "17", "male", "Freshman", "CU", "Track", "Softball", "Volleyball"),
("Jocelyn", "Bell", "17", "female", "Senior", "EM", "Volleyball", "Basketball", "XC"),
("Diego", "Gomez", "18", "male", "Junior", "EM", "Baseball", "Basketball", "XC"),
("Angelina", "Kelly", "15", "female", "Senior", "EM", "Track", "XC", "Basketball"),
("Brody", "Howard", "13", "male", "Senior", "CA", "Volleyball", "XC", "Football"),
("Andrea", "Ward", "16", "female", "Junior", "PH", "Football", "Volleyball", "Baseball"),
("Adam", "Cox", "16", "male", "Junior", "CA", "Baseball", "Volleyball", "Softball"),
("Valeria", "Diaz", "16", "female", "Junior", "EL", "Basketball", "XC", "Basketball"),
("Sebastian", "Richardson", "16", "male", "Freshman", "AU", "XC", "Baseball", "Basketball"),
("Rachel", "Wood", "15", "female", "Sophomore", "HC", "Baseball", "XC", "Volleyball"),
("Hayden", "Watson", "16", "male", "Senior", "IT", "XC", "Football", "Track"),
("Aaliyah", "Brooks", "15", "female", "Freshman", "PH", "N/A", "Football", "Softball"),
("Henry", "Bennett", "15", "male", "Senior", "PH", "Volleyball", "Track", "Softball"),
("Gabrielle", "Gray", "14", "female", "Senior", "IT", "XC", "Track", "Softball"),
("Ian", "James", "18", "male", "Sophomore", "SA", "Softball", "Football", "N/A"),
("Ariana", "Reyes", "18", "female", "Senior", "IT", "XC", "Track", "Football"),
("Bryan", "Cruz", "16", "male", "Sophomore", "AU", "Football", "N/A", "Volleyball"),
("Camila", "Hughes", "18", "female", "Freshman", "AU", "Football", "Baseball", "Softball"),
("Cole", "Price", "17", "male", "Sophomore", "CA", "N/A", "Softball", "Football"),
("Melanie", "Myers", "14", "female", "Junior", "SA", "Track", "XC", "Volleyball"),
("Eric", "Long", "17", "male", "Sophomore", "CA", "XC", "Football", "Track"),
("Charlotte", "Foster", "15", "female", "Senior", "AC", "XC", "Basketball", "Track"),
("Jaden", "Sanders", "16", "male", "Junior", "AC", "Softball", "Football", "Track"),
("Autumn", "Ross", "17", "female", "Sophomore", "AU", "Volleyball", "Track", "Football"),
("Blake", "Morales", "14", "male", "Junior", "AU", "Football", "Track", "Softball"),
("Faith", "Powell", "15", "female", "Junior", "AU", "XC", "Basketball", "Softball"),
("Cooper", "Sullivan", "16", "male", "Senior", "CA", "Volleyball", "Softball", "XC"),
("Isabelle", "Russell", "15", "female", "Junior", "EM", "Football", "Basketball", "Track"),
("Brady", "Ortiz", "15", "male", "Senior", "CU", "Baseball", "N/A", "Track"),
("Genesis", "Jenkins", "18", "female", "Junior", "EL", "Softball", "XC", "Softball"),
("Josiah", "Gutierrez", "14", "male", "Senior", "EM", "Track", "XC", "Baseball"),
("Mary", "Perry", "18", "female", "Freshman", "IT", "Track", "Basketball", "Softball"),
("Gracie", "Barnes", "18", "female", "Junior", "EL", "Volleyball", "Football", "N/A"),
("Josiah", "Brooklyn", "14", "male", "Senior", "EM", "Track", "XC", "N/A"),
("Eli", "Fisher", "18", "male", "Senior", "CU", "Softball", "XC", "Volleyball");

-- Query 1 : All freshmen playing sports
SELECT 
    CONCAT(first_name, " ", last_name, " ") AS "Student Name", 
    shop AS "Shop",
    age AS "Age",
    gender AS "Gender",
    class_year AS "Year",
    sport1 AS "Sport 1",
    sport2 AS "Sport 2",
    sport3 AS "Sport 3"
FROM student
WHERE class_year = "Freshman";

-- Query 2 : All seniors playing 2 sports
SELECT 
    CONCAT(first_name, " ", last_name, " ") AS "Student Name", 
    shop AS "Shop",
    age AS "Age",
    gender AS "Gender",
    class_year AS "Year",
    sport1 AS "Sport 1",
    sport2 AS "Sport 2",
    sport3 AS "Sport 3"
FROM student
WHERE sport3 = "N/A" AND class_year = "Senior";
-- Idea
    -- Count how many sports a senior is playing.

-- Query 3 : All males playing 3 sports
SELECT 
    CONCAT(first_name, " ", last_name, " ") AS "Student Name", 
    shop AS "Shop",
    age AS "Age",
    gender AS "Gender",
    class_year AS "Year",
    sport1 AS "Sport 1",
    sport2 AS "Sport 2",
    sport3 AS "Sport 3"
FROM student
WHERE sport1 != "N/A" AND sport2 != "N/A" AND sport3 != "N/A" AND gender = "male";

-- Query 4 : All females playing 1 sport
SELECT 
    CONCAT(first_name, " ", last_name, " ") AS "Student Name", 
    shop AS "Shop",
    age AS "Age",
    gender AS "Gender",
    class_year AS "Year",
    sport1 AS "Sport 1",
    sport2 AS "Sport 2",
    sport3 AS "Sport 3"
FROM student
WHERE gender = "female" AND sport2 = "N/A" AND sport3 = "N/A" AND sport1 != "N/A";

-- Query 5 : All students running XC
SELECT 
    CONCAT(first_name, " ", last_name, " ") AS "Student Name", 
    shop AS "Shop",
    age AS "Age",
    gender AS "Gender",
    class_year AS "Year",
    sport1 AS "Sport 1",
    sport2 AS "Sport 2",
    sport3 AS "Sport 3"
FROM student
WHERE sport1 = "XC" OR sport2 = "XC" or sport3 = "XC";

-- Query 6 : All female students who are upper classmen playing softball
SELECT 
    CONCAT(first_name, " ", last_name, " ") AS "Student Name", 
    shop AS "Shop",
    age AS "Age",
    gender AS "Gender",
    class_year AS "Year",
    sport1 AS "Sport 1",
    sport2 AS "Sport 2",
    sport3 AS "Sport 3"
FROM student
WHERE 
    gender = "female"
    AND (sport1 IN ("Softball") OR sport2 IN ("Softball") OR sport3 IN ("Softball") )
    AND class_year NOT IN ("Freshman", "Sophomore");

-- Query 7 : All male students who are under classmen playing multiple sports
SELECT 
    CONCAT(first_name, " ", last_name, " ") AS "Student Name", 
    shop AS "Shop",
    age AS "Age",
    gender AS "Gender",
    class_year AS "Year",
    sport1 AS "Sport 1",
    sport2 AS "Sport 2",
    sport3 AS "Sport 3"
FROM student
WHERE 
    class_year NOT IN ("Senior", "Junior")
    AND gender = "male"
    AND sport1 != "N/A" AND sport2 != "N/A" AND sport3 != "N/A";


DROP DATABASE student_athletes;
