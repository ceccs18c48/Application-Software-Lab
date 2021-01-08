USE lab8;

/**
 *REMYA C
 *S5 C
 *CHN18CS100
 *ROLL NO: 48
 *Application Software Lab 
 *Experiment 8
 *
 */
 
#1 
CREATE TABLE Employee(
    code CHAR(6) PRIMARY KEY,
    name VARCHAR(80),
    dob date,
    designation VARCHAR(100),
    salary FLOAT
);

#2
INSERT INTO Employee (code, name, dob, designation, salary)
VALUES
('100','Charles','05-10-1890','General Manager',50000.25),
('101','Charlotte','17-10-2018','Product Manager',50000.50),
('102','Louis','24-05-1965','Clerk',25000),
('103','Diana','07-10-2000','Clerk',15000.75);

#3
SELECT SUM(salary) FROM Employee WHERE designation='Clerk';

#4
SELECT MAX(salary) FROM Employee;

#5
SELECT AVG(salary) FROM Employee;

#6
SELECT MIN(salary) FROM Employee;

#7
SELECT COUNT(*) FROM Employee;
