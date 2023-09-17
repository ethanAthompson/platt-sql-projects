-- Author: Ethan Thompson

-- Project: Librarydb Checkout

-- Due April 20, 2:00PM

-- Creates the database

CREATE DATABASE librarydb;

-- Use Library in terminal

USE librarydb;

-- Creates the table

CREATE TABLE
    books(
        -- auto increments the id so each inserted data gets a unique Identifier
        id INT PRIMARY KEY AUTO_INCREMENT,
        title VARCHAR(500),
        author VARCHAR(500),
        first_name VARCHAR(500),
        last_name VARCHAR(500),
        checking_out datetime,
        due_date datetime
    );

-- describes table into terminal

DESC books;

INSERT INTO
    books(
        title,
        author,
        first_name,
        last_name,
        checking_out,
        due_date
    )
values (
        "Bears of the World ",
        "by Lance Craighead",
        "Kelly",
        " Joyce",
        NOW(),
        DATE_ADD(NOW(), INTERVAL 21 DAY)
    ), (
        "By the Shores of Silver Lake ",
        "by Laura Ingalls Wilder",
        "Coralee",
        " Naquin",
        NOW(),
        DATE_ADD(NOW(), INTERVAL 21 DAY)
    ), (
        "LESSONS IN CHEMISTRY ",
        "by Bonnie Garmus",
        "Katherine",
        " White",
        NOW(),
        DATE_ADD(NOW(), INTERVAL 21 DAY)
    ), (
        "OUTLIVE ",
        "by Colleen Hoover",
        "George",
        " White",
        NOW(),
        DATE_ADD(NOW(), INTERVAL 21 DAY)
    ), (
        "THE BODY KEEPS THE SCORE ",
        "by Bessel van der Kolk",
        "Wendell",
        " Joyce",
        NOW(),
        DATE_ADD(NOW(), INTERVAL 21 DAY)
    ), (
        "SPARE ",
        "by Prince Harry",
        "Ryan",
        " Naquin",
        NOW(),
        DATE_ADD(NOW(), INTERVAL 21 DAY)
    ), (
        "Birdsong ",
        "by Sebastian Faulks",
        "Darlene",
        " Gardner",
        NOW(),
        DATE_ADD(NOW(), INTERVAL 21 DAY)
    ), (
        "CHOOSING TO RUN ",
        "by Des Linden",
        "Marcus",
        " Estrada",
        NOW(),
        DATE_ADD(NOW(), INTERVAL 21 DAY)
    ), (
        "POVERTY, BY AMERICA ",
        "by Matthew Desmond",
        "Matthew",
        " White",
        NOW(),
        DATE_ADD(NOW(), INTERVAL 21 DAY)
    ), (
        "THINKING, FAST AND SLOW ",
        "by Daniel Kahneman",
        "Lisa",
        " Jones",
        NOW(),
        DATE_ADD(NOW(), INTERVAL 21 DAY)
    );

-- Selects all books in the database.

SELECT
    CONCAT(title, author) AS "Book Checked Out",
    CONCAT(first_name, last_name) AS "Person Checking Out",
    DATE_FORMAT(NOW(), '%M %D, %Y') AS "Checkout Date",
    DATE_FORMAT(due_date, '%M %D, %Y') AS "Due Date"
FROM books;

-- Selects all book titles that start with the letter B.

SELECT
    CONCAT(title, author) AS "Book Checked Out",
    CONCAT(first_name, last_name) AS "Person Checking Out",
    DATE_FORMAT(NOW(), '%M %D, %Y') AS "Checkout Date",
    DATE_FORMAT(due_date, '%M %D, %Y') AS "Due Date"
FROM books
WHERE title LIKE "B%";

-- Selects all books in alphabetical order by title.

SELECT
    CONCAT(title, author) AS "Book Checked Out",
    CONCAT(first_name, last_name) AS "Person Checking Out",
    DATE_FORMAT(NOW(), '%M %D, %Y') AS "Checkout Date",
    DATE_FORMAT(due_date, '%M %D, %Y') AS "Due Date"
FROM books
ORDER BY title ASC;

-- Select all books in alphabetical order by author.

SELECT
    CONCAT(title, author) AS "Book Checked Out",
    CONCAT(first_name, last_name) AS "Person Checking Out",
    DATE_FORMAT(NOW(), '%M %D, %Y') AS "Checkout Date",
    DATE_FORMAT(due_date, '%M %D, %Y') AS "Due Date"
FROM books
ORDER BY author ASC;

-- removes database to prevent inserting the same data over and over.

DROP DATABASE librarydb;