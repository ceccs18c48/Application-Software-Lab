-- (a) Create a table class.Fields are name and id --
CREATE TABLE Class (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50)
);


-- (b) Insert values into the table --
INSERT INTO Class (`name`) VALUES ("ABC"), ("DEF"), ("GHI");

-- (c) Display the table --
SELECT * FROM Class;

-- (d) Apply commit, save point and rollback commands --
START TRANSACTION;

INSERT INTO Class (`name`) VALUES ("TUV");
ROLLBACK; 

INSERT INTO Class (`name`) VALUES ("TUV");
COMMIT;

START TRANSACTION;
SAVEPOINT BeforeXYZ;
INSERT INTO Class (`name`) VALUES ("XYZ");
ROLLBACK TO BeforeXYZ;

COMMIT;


