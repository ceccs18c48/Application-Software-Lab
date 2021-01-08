/**
 *REMYA C
 *S5 C
 *CHN18CS100
 *ROLL NO: 48
 *Application Software Lab 
 *Experiment 9
 *
 */
 
 USE lab9;
 
 #1
CREATE TABLE Employee(
    code CHAR(4) PRIMARY KEY,
    name VARCHAR(60),
    dob DATE,
    designation VARCHAR(80),
    salary FLOAT
);

INSERT INTO Employee(code, name, dob, designation, salary)
VALUES
('a100','Rachel','19-05-1957','CTO',190000.78),
('b101','Phoebe','17-10-1957','CEO',185000.78),
('c102','Joey','07-05-1958','Clerk',59000.78),
('d103','Emma','07-10-2000','Auditor',59000.18);

#2
SELECT * FROM Employee ORDER BY name DESC;

#3
CREATE TABLE Deposit(
    baccno BIGINT,
    branch_name VARCHAR(60),
    amount FLOAT
);

INSERT INTO Deposit(baccno, branch_name, amount)
VALUES
(2110001,'New York',290000.25),
(2110002,'New York',291233.22),
(2110003,'Paris',123570.1),
(2110004,'New York',2239083.78),
(2110005,'New York',100090.90);

#4
SELECT branch_name,COUNT(baccno),SUM(amount) FROM Deposit GROUP BY branch_name;
