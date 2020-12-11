/**
 *REMYA C
 *S5 C
 *CHN18CS100
 *ROLL NO: 48
 *Application Software Lab 
 *Experiment 6
 *
 */

USE lab6;

#a
CREATE TABLE Store (
	`order_no` INTEGER PRIMARY KEY AUTO_INCREMENT,
    `code` VARCHAR(20) NOT NULL,
    `item` VARCHAR(30) NOT NULL,
    `quantity` INTEGER UNSIGNED DEFAULT 1,
    `price` DECIMAL(10,2) NOT NULL,
    `discount` DECIMAL(2,2) DEFAULT 0,
    `mrp` DECIMAL(10,2) NOT NULL
);


#b
INSERT INTO Store (`code`, `item`, `quantity`, `price`, `discount`, `mrp`) 
VALUES ("BSH", "BRUSH", 7, 50, 0, 25),("CLP", "PAPERCLIP", 50, 60, 0.9, 20);

#c
SELECT * FROM Store;


#d
CREATE VIEW CART AS
SELECT `item`, `quantity` FROM Store;

#e
INSERT INTO Store (`code`, `item`, `quantity`, `price`, `discount`, `mrp`) 
VALUES ("TPE", "TAPE", 35, 7500, 0, 6200);

SELECT * FROM CART;

#f
DROP VIEW CART;
