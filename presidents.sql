-- Project: Sql Presidents of u.s
-- Description: Data on Presidents
-- Author: Ethan Thompson
-- Date: 3/13/23
-- Due: 3/17/23


-- 1. Create the database 
create database presidents;


-- 2. changes database
use presidents; 


-- 3. create the table 
create table presidentData(
    /* Presidential Order: Unique Identifier  */
    Presidential_Number  integer primary key auto_increment,
    /* Last name of President */
    Last_name varchar(20),
    /* First name of President */
    First_name varchar(20),
    /* Presidents Party Affiliation */
    Party varchar(50),
    /* Nickname of President */
    Nick_name varchar(50),
    /* Year President was born */
    Year_of_birth varchar(5),
    /* Year of Presidents death */
    Year_of_death varchar(5),
    /* Number of terms the President served */
    term_in_office varchar(5),
    /* Decade */
    Decade varchar(5),
    /* Other Positions held before Presidency */
    Other_positions varchar(255),
    /* Major Accomplishments made during his lifetime */
    Major_accomplishments varchar(255),
    /* Wars fought during term in office */
    Wars_during_office varchar(80)
);

Create index idx_last_name On presidentData(Last_name);
Create index idx_party On presidentData(Party);


-- 4. entering data to specific parameters
insert into presidentData(    
    Last_name, First_name, 
    Party, Nick_name, 
    Year_of_birth, Year_of_death, term_in_office, 
    Decade, Other_positions,
    Major_accomplishments, Wars_during_office
) 

-- 5. values to be inserted into the table 
values -- Max: 11


-- ("Last_name","First_name","Party","Nick_name","Year_of_birth","Year_of_death","term_in_office","Decade","Other_positions","Major_accomplishments","Wars_during_office"),
("Wasington","George","Federalist","The American Cincinnatus","1732","1799","2","1990","Military","Jay & Pickney Treaty","French and Indian War"),
("Adams","John","Federalist","The Colossus of Independence","1735","1826","1","1800","State legislator","helped write Declaration of independance","Revolutionary War, Naval War"),
("Jefferson","Thomas","Democrat-Republican","The Apostle of Democracy","1743","1826","2","1800","Congressman","wrote declaration of independance,End A&S acts","Tripoli, Revolutionary"),
("Madison","James","Democrat-Republican","Little Jemmy","1751","1836","2","1800","State legislator","Father of the Constitution","Great Britain"),
("Monroe","James","Democrat-Republican","The Era of Good Feelings President","1758","1831","2","1800","	U.S. senator","Expansionist,brought Florida","First Seminole War"),
("Quincy Adams","John","National Republican","Old Man Eloquent","1767","1848","1","1820","	State legislator","Accused of winning presidency through corruption","England and Britian"),
("Jackson","Andrew","Democrat","The Hero of New Orleans","1767","1845","2","1830","	U.S. senator","Accused of abuse of power, spoils system","Revolutionary, war of 1812"),
("Van Buren","Martin","Democrat","The American Talleyrand","1782","1862","1","1840","U.S. senator","marred by an economic depression","Aroostook War"),
("Harrison","William","Whig","General Mum","1773","1841","1","1840","Territorial governor","defeated Tehcumseh at Tippecanoe","War of 1812"),
("Tyler","John","Whig","His Accidency","1790","1862","1","1840","U.S. representative","1st to succeed a dead president","War of 1812"),
("Polk","James","Democrat","Napoleon of the Stump","1795","1849","1","1840","	U.S. representative","presided over the mexican war oregon and california territories annexed to the U.S","Mexican-American War"),
("Taylor","Zachary","Whig","Old Rough and Ready","1784","1850","1","1840","	Military officer","threatened to use force to keep South from leaving the Union","Mexican-American War"),
("Fillmore","Millard","Whig","The American Louis Philippe","1800","1874","1","1850","U.S. representative","allowed slavery in the south","American Civil War"),
("Pierce","Franklin","Democrat","Young Hickory of the Granite Hills","1804","1869","1","1850","U.S senator","supported Kansas Nebraska Act","American Civil War"),
("Buchanan","James","Democrat","Old Public Functionary","1791","1868","1","1850","Secretary of State","failed to find a compromise to keep the south from seceding from the Union","American civil War"),
("Lincoln","Abraham","Republican","The Tycoon","1809","1865","1","1860","State Legislator","Opposed slavery, wanted to preserve the Union during civil war","American Civil War"),
("Johnson","Andrew","Democrat(Union)","The Tennessee Tailor","1808","1875","1","1860","U.S senator","the only democrat Vp to serve under a republican president","American Civil War"),
("Grant","Ulysses","Republican","Uncle Sam Grant","1822","1885","2","1870","politician","accepted Lees surrender","American Civil War"),
("Hayes","Rutherford","Republican","Rutherfraud","1822","1893","1","1870","State governer","The one of 3 Presidents to lose the popular vote","American Civil War"),
("Garfield","James","Republican","Boatman Jim","1831","1881","0","1880","State Legislator","Treid reform spoils system","Civil War battle of Middle Creek"),
("Arthur","Chester","Republican","The Dude President","1829","1886","1","1880","Lawyer","helped create the Civil Service","American Civil War"),
("Cleveland","Grover","Democrat","Uncle Jumbo","1837","1908","2","1880","Politician","Expaned the civil service and ended wasteful government programs","American Civil War"),
("Cleveland","Grover","Democrat","Uncle Jumbo","1837","1908","2","1890","Politician","Expaned the civil service and ended wasteful government programs","American Civil War"),
("Harrison","Benjamin","Republican","The Front Porch Campaigner","1833","1901","1","1890","U.S senator","Added 6 states, Grandson of a president","American Civil War"),
("McKinley","William","Republican","Big Bill","1843","1901","1","1890","U.S representative","Annexed Philippines and Hawaii","Spanish–American War"),
("Roosevelt","Theodore","Republican","The Trust Buster","1858","1900","1","1900","State govenor","Passed clean food acts","Russo-Japanese War"),
("Taft","William","Republican","Big Lub","1857","1930","1","1900","Territorial govenor","became a Chief justice of Supreme Court","Spanish-American War"),
("Wilson","Woodrow","Democrat","The Schoolmaster","1856","1924","2","1910","Politician","created federal reserve","World War I"),
("Harding","Warren","Republican","Wobbly Warren","1865","1923","0","1920","State legislator","Died in office just as the Teapot Dom scandal became public","World War I"),
("Coolidge","Calvin","Republican","Cautious Cal","1872","1933","1","1920","State govenor","lost re-election, ignored signs of the stock market collapse","World War I"),
("Hoover","Herbert","Republican"," The Great Humanitarian","1874","1964","1","1920","Politician","Failed to deal with great Depression","World War I, Civil War"),
("Roosevelt","Franklin","Democrat","Sphinx","1882","1945","3","1930","State govenor","Led america out of the Depression and through victory in WWII","Second World War"),
("Truman","Harry","Democrat","Give Em Hell Harry","1884","1972","1","1940","U.S senator","Made choice to drop the atom bomb to prevent invasion of Japan","World War II, Cold War"),
("Eisenhower","Dwight","Republican","Ike","1890","1969","2","1950","Military Officer","Ended war in Korea and helped steer the course of the Cold war","World War II, Korean War"),
("Kennedy","John","Democrat","JFK","1917","1963","1","1960","U.S representative","defused Cuban missile Crisis","Vietnam War,  Cold War"),
("B.Johnson","Lyndon","Democrat","Landslide Lyndon","1908","1973","1","1960","U.S senator","Finished passing of Civil Rights Act, passed sweeping anti poverty and civil rights programs","Vietnam War"),
("Nixon","Richard","Republican","Tricky","1913","1994","1","1960","Vice President","foreign policy, the Watergate scandal","Vietnam War"),
("Ford","Gerald","Republican","Jerry","1913","2006","1","1970","U.S representative","Only president never elected to Pres or VP","Yom Kippur War, World War II"),
("Carter","Jimmy","Democrat","The Peanut Farmer","1924","N/A","1","1970","State govenor","had some success with peace in the middle East","Vietnam War, Second Yemenite War, Korean War"),
("Reagan","Ronald","Republican","The Gipper","1911","2004","2","1980","State govenor","oversaw fall of Communism","Cold War"),
("H.W Bush","George","Republican","Papa Bush","1924","2018","1","1980","9","First Gulf War, Passage of ADA","Gulf War, Global War"),
("Clinton","Bill ","Democrat","The Comeback Kid","1946","N/A","2","1990","State govenor","passed NAFTA, survived impeachment","post-Cold War"),
("W.Bush","George","Republican","Dubya","1946","N/A","2","2000","State govenor","Made texas the leading producer of wind-power Electricity in U.S","Afghanistan, Iraq"),
("Obama","Barack","Democrat","No Drama Obama","1961","N/A","2","2000","State legislator","1st African American President, Passage of ObamaCare","Iraq War, Afghanistan War"),
("Trump","Donald","Republican","The Donald","1946","N/A","1","2010","politician","The Covid 19 Vaccine, Operation Warp Speed","Iraq War, Afghanistan War"),
("Biden","Joe","Democrat","Sleepy Joe","1942","N/A","1","2020","Vice president","cut child poverty in half through the American Rescue Plan","Iraq War");


-- 6. shows database in console
desc presidentData;


-- 7. queries 


/* 1. Display all presidents with the first name of “James”. (first and last) */
select Presidential_Number, First_name, Last_name 
from presidentData 
-- shows president whose name is James
where First_name = "James";

/* 2. Display all presidents that are a “Democrat”. (first, last & party) */
select Presidential_Number, First_name, Last_name, Party 
from presidentData 
-- shows only Democrat
where Party = "Democrat";


/* 3. Display all presidents that are a “Republican”. (first, last & party) */
select Presidential_Number, First_name, Last_name, Party 
from presidentData 
-- shows only Republican
where Party = "Republican";


/* 4. Display all presidents that aren’t “Republican or Democrat”. (first, last & party) */
select Presidential_Number, First_name, Last_name, Party 
from presidentData 
-- filters the found parameters, not in (value1, value2, value3, ...)
where Party not in ("Republican", "Democrat", "Democrat-Republican", "Democrat(Union)", "National Republican");

/* 5. Display all presidents that last name starts with an “M”. (first and last) */
select Presidential_Number, First_name, Last_name 
from presidentData
-- filteres out president with lastname starting with m, % is similar to rest in js
where Last_name like 'm%';


/* 6. Display all presidents that served 1 term. (first, last & terms) */
select Presidential_Number, First_name, Last_name, term_in_office 
from presidentData
-- filters exactly 1 term
where term_in_office = "1";


/* 7. Display all presidents that served 2 terms. (first, last & terms) */
select Presidential_Number, First_name, Last_name, term_in_office 
from presidentData
-- filters exactly two terms
where term_in_office = "2";


/* 8. Display all presidents that served more than 2 terms. (first, last & terms) */
select Presidential_Number, First_name, Last_name, term_in_office 
from presidentData
-- filters presidents whose term is higher than 2
where term_in_office > 2;

-- /* 9. Display all presidents that served during peace time. (first & last) */
select Presidential_Number, First_name, Last_name 
from presidentData
-- list of presidents who served during peace time
where Last_name IN (
    "Madison","Polk","Lincoln","McKinley",
    "Wilson","Roosevelt","Truman","Johnson",
    "H.W Bush","W.Bush","Obama"
    -- and filters out the name Theodore
) and First_name not in ("Theodore");

-- 8. Delete the database
drop database presidents;