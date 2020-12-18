/**
 *REMYA C
 *S5 C
 *CHN18CS100
 *ROLL NO: 48
 *Application Software Lab 
 *Experiment 6
 *
 */

USE lab7;

#a
CREATE TABLE store(
	    order_no int primary key AUTO_INCREMENT,
	    code varchar(10) not null,
	    item varchar(30) not null,
	    quantity int default 0,
	    price float,
	    discount int default 0,
	    mrp float not null
);

#b
INSERT INTO store(code,item,quantity,price,discount,mrp)
VALUES 
("a1", "Canon EOS", 14, 28000, 2000, 30000),
("a2", "Nikon 5D", 12, 120000, 1000, 150000),
("a3", "OnePlus Nord", 10, 85000, 0, 100000);

#c
SELECT * FROM store; 

#d
SELECT MOD(price,9) FROM store;

#e
SELECT price,POWER(price,2) FROM store;

#f
SELECT ROUND(mrp DIV 7) FROM store;
