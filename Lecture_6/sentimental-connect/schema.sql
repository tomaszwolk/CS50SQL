-- CREATE DATABASE `linkedin`;

-- USE `linkedin`;

-- Users
-- The heart of LinkedIn’s platform is its people. Your database should be able to represent the
-- following information about LinkedIn’s users:
--      * Their first and last name
--      * Their username
--      * Their password
-- Keep in mind that, if a company is following best practices, application passwords are “hashed.”
-- No need to worry about hashing passwords here, though it might be helpful to know that some hashing
-- algorithms can produce strings up to 128 characters long.
CREATE TABLE `users` (
    `id` INT UNSIGNED AUTO_INCREMENT,
    `first_name` VARCHAR(32) NOT NULL,
    `last_name` VARCHAR(32) NOT NULL,
    `username` VARCHAR(32) NOT NULL UNIQUE,
    `password` VARCHAR(128) NOT NULL,
    PRIMARY KEY(`id`)
);

-- Schools and Universities
-- LinkedIn also allows for official school or university accounts, such as that for Harvard,
-- so alumni (i.e., those who’ve attended) can identify their affiliation.
-- Ensure that LinkedIn’s database can store the following information about each school:
--      * The name of the school
--      * The type of school
--      * The school’s location
--      * The year in which the school was founded
-- You should assume that LinkedIn only allows schools to choose one of three types: “Primary”,
-- “Secondary”, and “Higher Education”.
CREATE TABLE `schools` (
    `id` INT UNSIGNED AUTO_INCREMENT,
    `name` VARCHAR(32) NOT NULL,
    `type` ENUM('Primary', 'Secondary', 'Higher Education'),
    `location` VARCHAR(32) NOT NULL,
    `founded` SMALLINT, -- YEAR IS FOR 1901-2155, SMALLINT IS FOR -32,768 to 32,767
    PRIMARY KEY(`id`)
);

-- Companies
-- LinkedIn allows companies to create their own pages, like the one for LinkedIn itself,
-- so employees can identify their past or current employment with the company.
-- Ensure that LinkedIn’s database can store the following information for each company:
--      * The name of the company
--      * The company’s industry
--      * The company’s location
-- You should assume that LinkedIn only allows companies to choose from one of three industries:
-- “Technology”, “Education”, and “Business”.
CREATE TABLE `companies` (
    `id` INT UNSIGNED AUTO_INCREMENT,
    `name` VARCHAR(32) NOT NULL,
    `industry` ENUM('Technology', 'Education', 'Business'),
    `location` VARCHAR(32),
    PRIMARY KEY(`id`)
);

-- Connections with People
-- LinkedIn’s database should be able to represent mutual (reciprocal, two-way) connections between users.
-- No need to worry about one-way connections user A “following” user B without user B “following” user A.
CREATE TABLE `people_connections` (
    `userA` INT UNSIGNED,
    `userB` INT UNSIGNED,
    PRIMARY KEY(`userA`, `userB`),
    FOREIGN KEY(`userA`) REFERENCES `users`(`id`),
    FOREIGN KEY(`userB`) REFERENCES `users`(`id`)
);

-- Connections with Schools
-- A user should be able to create an affiliation with a given school. And similarly, that school
-- should be able to find its alumni. Additionally, allow a user to define:
--      * The start date of their affiliation (i.e., when they started to attend the school)
--      * The end date of their affiliation (i.e., when they graduated), if applicable
--      * The type of degree earned/pursued (e.g., “BA”, “MA”, “PhD”, etc.)
CREATE TABLE `schools_connections` (
    `user_id` INT UNSIGNED,
    `school_id` INT UNSIGNED,
    `affiliation_start` DATE NOT NULL,
    `affiliation_end` DATE,
    `degree` VARCHAR(8),
    PRIMARY KEY(`user_id`, `school_id`),
    FOREIGN KEY(`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY(`school_id`) REFERENCES `schools`(`id`)
);

-- Connections with Companies
-- A user should be able to create an affiliation with a given company. And similarly,
-- a company should be able to find its current and past employees. Additionally, allow a user to define:
--      * The start date of their affiliation (i.e., the date they began work with the company)
--      * The end date of their affiliation (i.e., when left the company), if applicable
CREATE TABLE `companies_connections` (
    `user_id` INT UNSIGNED,
    `company_id` INT UNSIGNED,
    `title` VARCHAR(32),
    `affiliation_start` DATE NOT NULL,
    `affiliation_end` DATE,
    PRIMARY KEY(`user_id`, `company_id`),
    FOREIGN KEY(`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY(`company_id`) REFERENCES `companies`(`id`)
);

-- Sample Data

-- INSERT INTO `users` (`first_name`, `last_name`, `username`, `password`)
-- VALUES
-- ('Claudine', 'Gay', 'claudine', 'password'),
-- ('Reid', 'Hoffman', 'reid', 'password');

-- INSERT INTO `schools` (`name`, `type`, `location`, `founded`)
-- VALUES
-- ('Harvard University', 'Higher Education', 'Cambridge, Massachusetts', 1636);

-- INSERT INTO `companies` (`name`, `industry`, `location`)
-- VALUES
-- ('LinkedIn', 'Technology', 'Sunnyvale, California');

-- INSERT INTO `schools_connections` (`user_id`, `school_id`, `affiliation_start`, `affiliation_end`, `degree`)
-- VALUES
-- (1, 1, '1993-01-01', '1998-12-31', 'PhD');

-- INSERT INTO `companies_connections` (`user_id`, `company_id`, `title`, `affiliation_start`, `affiliation_end`)
-- VALUES
-- (2, 1, 'CEO and Chairman', '2003-01-01', '2007-02-01');

