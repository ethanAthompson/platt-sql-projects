-- Author: Ethan Thompson
-- Description: Sql Student Class List Database 


-- creates and uses the database
create database studentClassList;
use studentClassList;

create table student(
	id int primary key auto_increment, 
	student_id varchar(10) not null unique,
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	graduation_year varchar(5) not null  
);

create table classes(
	id int primary key auto_increment,
	class_id varchar(10) not null unique,
	class_description varchar(50) not null 
);

create table classList(
	id int primary key auto_increment, 
	class_id varchar(10) not null,
	student_id varchar(10) not null 
);

-- describes the tables
describe student;
describe classes;
describe classList;

-- manual data for student (0 -> 19) toal 20 students
insert into student(student_id, first_name, last_name, graduation_year) values 
("NH100", "Bushmon", "Boogerball", "2019"),
("NH101", "Bugman", "Droopybottom",  "2019"),
("NH102", "Burman", "Snotball",  "2019"),
("NH103", "Gooaboo", "Oinkseed",  "2023"),
("NH104", "Peaspitz", "Snotbean",  "2019"),
("NH105", "Peabs", "Blubberseed",  "2023"),
("NH106", "Coomoo", "Roachsniff",  "2024"),
("NH107", "Hickcan", "Woolhall",  "2008"),
("NH108", "Snortu", "Madborn",  "2023"),
("NH109", "Sucan", "Antman",  "2020"),
("NH110", "Figby", "Trashwax",  "2011"),
("NH111", "Beanieman", "Nosehall",  "2023"),
("NH112", "Shumoo", "Hippyhall",  "2024"),
("NH113", "Shuwee", "Burby",  "2024"),
("NH114", "Chewspitz ", "Wheebag",  "2024"),
("NH115", "Fartbag", "Boogersniff",  "2023"),
("NH116", "Bugeenie", "Fuzzbee",  "2020"),
("NH117", "Flapby", "Antkins",  "2024"),
("NH118", "Zoobo", "Eggpants",  "2024"),
("NH119", "Buzzroid", "Goatgold",  "2020");

-- manual data for class (total 22 classes)
insert into classes(class_id, class_description) values 
("CS1109","Introduction to Computing"), 
("CS1110","Introduction to C Programming"), 
("CS1166","Discrete Mathematics for Computing"), 
("CS2210","Java Programming"), 
("CS2212","Intermediate Programming, C and C++"), 
("CS2215","Databases and SQL"), 
("CS2226","Data Structures and Algorithms"), 
("CS2246","Introduction to Computer Security"), 
("CS2254","Introduction to Game Development"), 
("CS3316","Professional Issues in Computing Technology"), 
("CS3320","Operating Systems"), 
("CS3326","Algorithm Design and Analysis"), 
("CS3331","Computer Organization Lab"), 
("CS3338","Introduction to Cyber Forensic Science"), 
("CS3347","Networking Technologies"), 

("CS3351","Script Programming/Python"), 
("CS3354","Intermediate Game Development "), 
("CS3398","Internship or Research"), 
("CS4401","Data Mining"), 
("CS4429","Software Quality Assurance"), 
("CS4434","Assembly Language Programming"), 
("CS4438","Small Scale Digital Forensic Science");

-- manual data for classlist, each student enrolls 5 classes
insert into classList(class_id, student_id) values
-- s1
("CS1109","NH100"),
("CS1110","NH100"),
("CS1166","NH100"),
("CS2210","NH100"),
("CS2212","NH100"),
-- s2
("CS1109","NH101"),
("CS1110","NH101"),
("CS1166","NH101"),
("CS2210","NH101"),
("CS2212","NH101"),
-- s3
("CS1109","NH102"),
("CS1110","NH102"),
("CS1166","NH102"),
("CS2210","NH102"),
("CS2212","NH102"),
-- s4
("CS1109","NH103"),
("CS1110","NH103"),
("CS1166","NH103"),
("CS2210","NH103"),
("CS2212","NH103"),
-- s5
("CS1109","NH104"),
("CS1110","NH104"),
("CS1166","NH104"),
("CS2210","NH104"),
("CS2212","NH104"),
-- s6
("CS2215","NH105"),
("CS2226","NH105"),
("CS2246","NH105"),
("CS2254","NH105"),
("CS3316","NH105"),
-- s7
("CS2215","NH106"),
("CS2226","NH106"),
("CS2246","NH106"),
("CS2254","NH106"),
("CS3316","NH106"),
-- s8
("CS2215","NH107"),
("CS2226","NH107"),
("CS2246","NH107"),
("CS2254","NH107"),
("CS3316","NH107"),
-- s9
("CS2215","NH108"),
("CS2226","NH108"),
("CS2246","NH108"),
("CS2254","NH108"),
("CS3316","NH108"),
-- s10
("CS2215","NH109"),
("CS2226","NH109"),
("CS2246","NH109"),
("CS2254","NH109"),
("CS3316","NH109"),
-- s11
("CS3320","NH110"),
("CS3326","NH110"),
("CS3331","NH110"),
("CS3338","NH110"),
("CS3347","NH110"),
-- s12
("CS3320","NH111"),
("CS3326","NH111"),
("CS3331","NH111"),
("CS3338","NH111"),
("CS3347","NH111"),
-- s13
("CS3320","NH112"),
("CS4438","NH112"),
("CS3331","NH112"),
("CS3338","NH112"),
("CS3347","NH112"),
-- s14
("CS3320","NH113"),
("CS3326","NH113"),
("CS4438","NH113"),
("CS3338","NH113"),
("CS3347","NH113"),
-- s15
("CS3320","NH114"),
("CS3326","NH114"),
("CS4438","NH114"),
("CS3338","NH114"),
("CS3347","NH114"),

-- s16
("CS3351","NH115"),
("CS3354","NH115"),
("CS3398","NH115"),
("CS4434","NH115"),
("CS4429","NH115"),
-- s17
("CS3351","NH116"),
("CS4438","NH116"),
("CS3398","NH116"),
("CS4434","NH116"),
("CS4429","NH116"),
-- s18
("CS3351","NH117"),
("CS3354","NH117"),
("CS3398","NH117"),
("CS4434","NH117"),
("CS4429","NH117"),
-- s19
("CS3351","NH118"),
("CS3354","NH118"),
("CS3398","NH118"),
("CS4434","NH118"),
("CS4401","NH118"),
-- s20
("CS3351","NH119"),
("CS3354","NH119"),
("CS4438","NH119"),
("CS4401","NH119"),
("CS4434","NH119");

-- 1. A list of all classes each student is enrolled in sorted by student’s last name. 
select 
	concat(first_name," ", last_name) as "Student",
	class_description as "List of Classes" 
from student 
inner join classList using(student_id)
inner join classes using(class_id)
order by last_name asc;

-- 2. A class list (Students enrolled in each class) sorted by class id. 
select 
	concat(first_name," ", last_name) as "Student",
	class_id as "Class Number",
	class_description as "List of Classes"
from student 
inner join classList using(student_id)
inner join classes using(class_id)
order by class_id asc;

-- 3. Student list sorted by graduation year.
select 
	concat(first_name," ", last_name) as "Student",
	graduation_year as "Graduation Year"
from student 
inner join classList using(student_id)
inner join classes using(class_id)
order by graduation_year asc;

-- 4. A count (use count()) of how many students are in each class sorted and grouped by class id  
select 
	concat(first_name," ", last_name) as "Student",
	class_description as "List of Classes",
	count(*) as "Students' in class"
from student 
inner join classList using(student_id)
inner join classes using(class_id)
group by class_id
order by class_id asc;

-- frees database
drop database studentClassList;