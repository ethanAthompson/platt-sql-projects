-- Author: Ethan Thompson

-- Project: SQL LIBRARY CHECKOUT DATABASE

-- Due April 21, 2:00PM

create database libraryCheckout;

-- creates the libraryCheckout db

use libraryCheckout;

-- uses the libraryCheckout db

create table
    bookCatalog(
        -- table for catalog 
        id int primary key auto_increment,
        -- primary key
        bookId varchar(3) not null unique,
        -- unique book id number
        title varchar(255),
        -- book title
        author varchar(255) -- author first and last name
    );

create table
    libraryCards(
        -- table for library cards
        id int primary key auto_increment,
        -- primary key
        cardNum varchar(3) not null unique,
        -- The unique library card number
        firstName varchar(255),
        -- person's first name
        lastName varchar(255) -- person's last name
    );

create table
    checkOut(
        -- table for checkOut 
        id int primary key auto_increment,
        -- primary key
        bookId varchar(3),
        -- book id number
        cardNum varchar(3),
        -- library card number
        checkOutDate datetime,
        -- the checked out book
        dueDate datetime -- the date the book is due back ( 3 weeks from the check out date )
    );

describe bookCatalog;

-- describes the bookCatalog table to console

describe libraryCards;

-- describes the libraryCards table to the console

describe checkOut;

-- describes the checkOut table to the console

-- 10 books from 0 -> 9

insert into
    bookCatalog(bookId, title, author)
values (
        "bk0",
        "THINKING, FAST AND SLOW ",
        "by Daniel Kahneman"
    ), (
        "bk1",
        "Bears of the World ",
        "by Lance Craighead"
    ), (
        "bk2",
        "The Shores of Silver Lake ",
        "by Laura Ingalls Wilder"
    ), (
        "bk3",
        "LESSONS IN CHEMISTRY ",
        "by Bonnie Garmus"
    ), (
        "bk4",
        "OUTLIVE ",
        "by Colleen Hoover"
    ), (
        "bk5",
        "THE BODY KEEPS THE SCORE ",
        "by Bessel van der Kolk"
    ), (
        "bk6",
        "SPARE ",
        "by Prince Harry"
    ), (
        "bk7",
        "Birdsong ",
        "by Sebastian Faulks"
    ), (
        "bk8",
        "CHOOSING TO RUN ",
        "by Des Linden"
    ), (
        "bk9",
        "POVERTY, BY AMERICA ",
        "by Matthew Desmond"
    );

-- 10 library cards from 0 -> 9

insert into
    libraryCards(cardNum, firstName, lastName)
values ("lc0", "Lisa ", "Jones"), ("lc1", "Kelly ", "Joyce"), ("lc2", "Coralee ", "Naquin"), ("lc3", "Katherine ", "White"), ("lc4", "George ", "Stallworth"), ("lc5", "Wendell ", "Roberts"), ("lc6", "Ryan ", "Joyce"), ("lc7", "Darlene ", "Estrada"), ("lc8", "Marcus ", "Gardner"), ("lc9", "Matthew ", "White");

-- Each library card must check out 4 books.

insert into
    checkOut(
        bookId,
        cardNum,
        checkOutDate,
        dueDate
    )
values
    -- lc0 (
        "bk1",
        "lc0",
        NOW(),
        Date_ADD(NOW(), INTERVAL 21 DAY)
    ), (
        "bk2",
        "lc0",
        NOW(),
        Date_ADD(NOW(), INTERVAL 21 DAY)
    ), (
        "bk3",
        "lc0",
        NOW(),
        Date_ADD(NOW(), INTERVAL 21 DAY)
    ), (
        "bk4",
        "lc0",
        NOW(),
        Date_ADD(NOW(), INTERVAL 21 DAY)
    ),
    -- lc1 (
        "bk1",
        "lc1",
        NOW(),
        Date_ADD(NOW(), INTERVAL 21 DAY)
    ), (
        "bk2",
        "lc1",
        NOW(),
        Date_ADD(NOW(), INTERVAL 21 DAY)
    ), (
        "bk3",
        "lc1",
        NOW(),
        Date_ADD(NOW(), INTERVAL 21 DAY)
    ), (
        "bk4",
        "lc1",
        NOW(),
        Date_ADD(NOW(), INTERVAL 21 DAY)
    ),
    -- lc2 (
        "bk1",
        "lc2",
        NOW(),
        Date_ADD(NOW(), INTERVAL 21 DAY)
    ), (
        "bk2",
        "lc2",
        NOW(),
        Date_ADD(NOW(), INTERVAL 21 DAY)
    ), (
        "bk3",
        "lc2",
        NOW(),
        Date_ADD(NOW(), INTERVAL 21 DAY)
    ), (
        "bk4",
        "lc2",
        NOW(),
        Date_ADD(NOW(), INTERVAL 21 DAY)
    ),
    -- lc3 (
        "bk1",
        "lc3",
        NOW(),
        Date_ADD(NOW(), INTERVAL 21 DAY)
    ), (
        "bk2",
        "lc3",
        NOW(),
        Date_ADD(NOW(), INTERVAL 21 DAY)
    ), (
        "bk3",
        "lc3",
        NOW(),
        Date_ADD(NOW(), INTERVAL 21 DAY)
    ), (
        "bk4",
        "lc3",
        NOW(),
        Date_ADD(NOW(), INTERVAL 21 DAY)
    ),
    -- lc4 (
        "bk1",
        "lc4",
        NOW(),
        Date_ADD(NOW(), INTERVAL 21 DAY)
    ), (
        "bk2",
        "lc4",
        NOW(),
        Date_ADD(NOW(), INTERVAL 21 DAY)
    ), (
        "bk3",
        "lc4",
        NOW(),
        Date_ADD(NOW(), INTERVAL 21 DAY)
    ), (
        "bk4",
        "lc4",
        NOW(),
        Date_ADD(NOW(), INTERVAL 21 DAY)
    ),
    -- lc5 (
        "bk1",
        "lc5",
        NOW(),
        Date_ADD(NOW(), INTERVAL 21 DAY)
    ), (
        "bk2",
        "lc5",
        NOW(),
        Date_ADD(NOW(), INTERVAL 21 DAY)
    ), (
        "bk3",
        "lc5",
        NOW(),
        Date_ADD(NOW(), INTERVAL 21 DAY)
    ), (
        "bk4",
        "lc5",
        NOW(),
        Date_ADD(NOW(), INTERVAL 21 DAY)
    ),
    -- lc6 (
        "bk1",
        "lc6",
        NOW(),
        Date_ADD(NOW(), INTERVAL 21 DAY)
    ), (
        "bk2",
        "lc6",
        NOW(),
        Date_ADD(NOW(), INTERVAL 21 DAY)
    ), (
        "bk3",
        "lc6",
        NOW(),
        Date_ADD(NOW(), INTERVAL 21 DAY)
    ), (
        "bk4",
        "lc6",
        NOW(),
        Date_ADD(NOW(), INTERVAL 21 DAY)
    ),
    -- lc7 (
        "bk1",
        "lc7",
        NOW(),
        Date_ADD(NOW(), INTERVAL 21 DAY)
    ), (
        "bk2",
        "lc7",
        NOW(),
        Date_ADD(NOW(), INTERVAL 21 DAY)
    ), (
        "bk3",
        "lc7",
        NOW(),
        Date_ADD(NOW(), INTERVAL 21 DAY)
    ), (
        "bk4",
        "lc7",
        NOW(),
        Date_ADD(NOW(), INTERVAL 21 DAY)
    ),
    -- lc8 (
        "bk1",
        "lc8",
        NOW(),
        Date_ADD(NOW(), INTERVAL 21 DAY)
    ), (
        "bk2",
        "lc8",
        NOW(),
        Date_ADD(NOW(), INTERVAL 21 DAY)
    ), (
        "bk3",
        "lc8",
        NOW(),
        Date_ADD(NOW(), INTERVAL 21 DAY)
    ), (
        "bk4",
        "lc8",
        NOW(),
        Date_ADD(NOW(), INTERVAL 21 DAY)
    ),
    -- lc9 (
        "bk1",
        "lc9",
        NOW(),
        Date_ADD(NOW(), INTERVAL 21 DAY)
    ), (
        "bk2",
        "lc9",
        NOW(),
        Date_ADD(NOW(), INTERVAL 21 DAY)
    ), (
        "bk3",
        "lc9",
        NOW(),
        Date_ADD(NOW(), INTERVAL 21 DAY)
    ), (
        "bk4",
        "lc9",
        NOW(),
        Date_ADD(NOW(), INTERVAL 21 DAY)
    );

-- For all queries do not display primary key

-- For all dates use the Month Day, Year format (i.e., April 19, 2023)

-- All field are required so use the correct column identifier when creating your tables.

-- DO NOT use the default field names!

-- Book format ->  (i.e., PHP 5.3 Explained by Matt Doyle).

-- 1.  All books in the database order by author.

select
    bookId as "Book Number",
    firstName as "First Name",
    lastName as "Last Name",
    concat(title, author) as "Book",
    -- combined the two strings
    DATE_FORMAT(checkOutDate, "%M %D %Y") as "Check Out Date",
    -- formats checkout date
    DATE_FORMAT(dueDate, "%M %D %Y") as "Due Date",
    -- formats duedate
    count(*) as "Book Quantity"
from bookCatalog
    inner join checkOut using (bookId) -- joins the checkout table by related book id, to ge the fields in the checkout table
    inner join libraryCards using (cardNum) -- joins the library cards by related card number
group by
    Book,
    cardNum -- groups by book (title and author)
order by Book ASC;

-- orders by book (title and author)

-- 2.  How many books each card has checked out use the count() function.

select
    bookId as "Book Number",
    firstName as "First Name",
    lastName as "Last Name",
    concat(title, author) as "Book",
    -- combined the two strings
    DATE_FORMAT(checkOutDate, "%M %D %Y") as "Check Out Date",
    -- formats checkout date
    DATE_FORMAT(dueDate, "%M %D %Y") as "Due Date",
    -- formats duedate
    COUNT(*) as "Book Quantity" -- formats the count of each book 
from bookCatalog
    inner join checkOut using (bookId) -- joins the checkout table by related book id, to ge the fields in the checkout table
    inner join libraryCards using (cardNum) -- joins the library cards by related card number
group by
    cardNum -- groups by card number to get the number of books each card checked out
order by cardNum ASC;

-- orders books by cardNum 1 -> 10

-- 3.  A list of books checked out grouped by library card.

select
    bookId as "Book Number",
    firstName as "First Name",
    lastName as "Last Name",
    concat(title, author) as "Book",
    -- combined the two strings
    DATE_FORMAT(checkOutDate, "%M %D %Y") as "Check Out Date",
    -- formats checkout date
    DATE_FORMAT(dueDate, "%M %D %Y") as "Due Date",
    -- formats duedate
    count(*) as "Book Quantity"
from bookCatalog
    inner join checkOut using (bookId) -- joins the checkout table by related book id, to ge the fields in the checkout table
    inner join libraryCards using (cardNum) -- joins the library cards by related card number
group by
    Book,
    cardNum -- groups by ibrary card
order by cardNum ASC;

-- orders by the library card

-- 4.  A list of library cards that checked out a specific book.

select
    bookId as "Book Number",
    firstName as "First Name",
    lastName as "Last Name",
    concat(title, author) as "Book",
    -- combined the two strings
    DATE_FORMAT(checkOutDate, "%M %D %Y") as "Check Out Date",
    -- formats checkout date
    DATE_FORMAT(dueDate, "%M %D %Y") as "Due Date",
    -- formats duedate
    count(*) as "Book Quantity"
from bookCatalog
    inner join checkOut using (bookId) -- joins the checkout table by related book id, to ge the fields in the checkout table
    inner join libraryCards using (cardNum) -- joins the library cards by related card number
where
    cardNum = 'lc5' -- selects the specific library card with lc5
group by
    Book,
    cardNum -- groups by ibrary card
order by cardNum ASC;

-- orders by the library card

drop database libraryCheckout;

-- exits out of the database