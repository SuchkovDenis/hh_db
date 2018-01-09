CREATE SCHEMA `hh`;

CREATE TABLE
    hh.`users` (
        `user_id` INT(11) NOT NULL AUTO_INCREMENT,
        `email` CHAR(40) NOT NULL,
        `password` CHAR(40) NOT NULL,
        `register_date` DATETIME NOT NULL,
        `last_login` DATETIME NOT NULL,
        PRIMARY KEY(`user_id`)
);

CREATE TABLE
	hh.`vacancy` (
		`vacancy_id` INT(11) NOT NULL AUTO_INCREMENT,
        `company` CHAR(40) NOT NULL,
        `position` CHAR(40) NOT NULL,
        `description` TEXT NOT NULL,
        `salary_bottom` INT(11) NOT NULL,
        `salary_top` INT(11) NOT NULL,
        `experience` INT(4) NOT NULL,
        `skills`  TEXT NOT NULL,
        `date_begin` DATETIME NOT NULL,
        `date_end`DATETIME NOT NULL,
        PRIMARY KEY(`vacancy_id`)
);

CREATE TABLE
	hh.`CV` (
		`CV_id` INT(11) NOT NULL AUTO_INCREMENT,
        `user_id` INT(11) NOT NULL,
        `position` CHAR(40) NOT NULL,
        `full_name` CHAR(40) NOT NULL,
		`age` INT(11) NOT NULL,
		`salary_bottom` INT(11) NOT NULL,
        `salary_top` INT(11) NOT NULL,
        `experience` INT(4) NOT NULL,
        `skills`  TEXT NOT NULL,
        PRIMARY KEY(`CV_id`)
);

CREATE TABLE
	hh.`response` (
		`vacancy_id` INT(11) NOT NULL,
        `CV_id` INT(11) NOT NULL
);

CREATE TABLE
	hh.`messages` (
		`vacancy_id` INT(11) NOT NULL,
        `CV_id` INT(11) NOT NULL,
        `response` CHAR(40),
        `invite` CHAR(40)
);