/**
 *REMYA C
 *S5 C
 *CHN18CS100
 *ROLL NO: 48
 *Application Software Lab 
 *Experiment 1
 *
 */


USE lab4;

A.

CREATE TABLE Department(
    `code` INT PRIMARY KEY NOT NULL,
    `title` VARCHAR(30),
    `dept_name` VARCHAR(30) UNIQUE NOT NULL,
    `dept_id` INT UNIQUE NOT NULL,
    `salary` INT,
    CHECK (`salary` > 2000 )
);

INSERT INTO Department(`code`, `title`, `dept_name`, `dept_id`,`salary`) 
VALUES (305, "Example", "Application Software", 501, 75000);

B.

CREATE TABLE Instructor(
    `name` VARCHAR(50) NOT NULL,
    `code` INT NOT NULL,
    `id` INT PRIMARY KEY DEFAULT 0
);

INSERT INTO Instructor(`name`, `code`)
VALUES ("Abc", 100);

