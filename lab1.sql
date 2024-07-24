CREATE DATABASE CSE_3A_214

CREATE TABLE DEPOSITE(
ACTNO INT,
CNAME VARCHAR(50),
BNAME VARCHAR(50),
AMOUNT DECIMAL(8,2),
ADATE DATETIME
)

INSERT INTO DEPOSITE VALUES
(101,'ANIL','VRCE',1000,95-31),
(102,'SUNIL','AJNI',5000,96-1-4),
(103,'MEHUL','KAROLBAGH',3500,95-11-17),
(104,'MADHURI','CHANDI',1200,95-12-17),
(105,'PRAMOD','M.G.ROAD',3000,96-3-27),
(106,'SANDIP','ANDHERI',2000,96-3-31),
(107,'SHIVANI','VIRAR',1000,95-9-5),
(108,'KRANTI','NEHRU PLACE',5000,95-7-2),
(109,'MINU','POWAI',7000,95-10)
  
SELECT * FROM DEPOSITE


CREATE TABLE BRANCH(
BNAME VARCHAR(50),
CITY VARCHAR(50)
)
INSERT INTO BRANCH VALUES
('VRCE','NAGPUR'),
('AJNI','NAGPUR'),
('KAROLBAGH','DELHI'),
('CHANDI','DELHI'),
('M.G.ROAD','BANGLORE'),
('ANDHERI','BOMBAY'),
('VIRAR','BOMBAY'),
('NEHRU PLACE','DELHI'),
('POWAI','BOMBAY')

SELECT *FROM BRANCH

CREATE TABLE CUSTOMER(
CNAME VARCHAR(50),
CITY VARCHAR(50)
)
INSERT INTO CUSTOMER VALUES
('ANIL','CALCUTTA'),
('SUNIL','DELHI'),
('MEHUL','BARODA'),
('MANDAR','PATVA'),
('MADHURI','NAGPUR'),
('PRAMOD','NAGPUR'),
('SANDIP','SURAT'),
('SHIVANI','BOMBAY'),
('KRANTI','BOMBAY'),
('NAREN','BOMBAY')

SELECT*FROM CUSTOMER

CREATE TABLE BORROW(
LOANNO INT,
CNAME VARCHAR(50),
BNAME VARCHAR(50),
AMOUNT DECIMAL(8,2)
)
INSERT INTO BORROW VALUES
(201,'ANIL','VRCE',1000),
(202,'MEHUL','ANIL',5000),
(203,'SUNIL','DHARANPETH',3000),
(204,'MADHURI','ANDHERI',2000),
(205,'PRAMOD','VIRAR',8000),
(206,'KRANTI','NEHRU PLACE',2000)

SELECT*FROM BORROW