----ALTER---part:A--------------
--1. Add two more columns City VARCHAR (20) and Pincode INT.
ALTER TABLE DEPOSITE
ADD CITY VARCHAR(20),PINCOD INT
SELECT*FROM DEPOSITE
--2. Change the size of CNAME column from VARCHAR (50) to VARCHAR (35).
ALTER TABLE DEPOSITE
ALTER COLUMN CNAME VARCHAR(35)
SELECT*FROM DEPOSITE
--3. Change the data type DECIMAL to INT in amount Column.
ALTER TABLE DEPOSITE
ALTER COLUMN AMOUNT INT
SELECT*FROM DEPOSITE
--4. Rename Column ActNo to ANO.
SP_RENAME 'DEPOSITE.ACTNO','ANO'
SELECT*FROM DEPOSITE
--5. Delete Column City from the DEPOSIT table.
ALTER TABLE DEPOSITE
DROP COLUMN CITY
SELECT*FROM DEPOSITE
--6. Change name of table DEPOSIT to DEPOSIT_DETAIL
SP_RENAME 'DEPOSITE','DEPOSITE_DETAIL'
SELECT*FROM DEPOSITE_DETAIL
----------part:B----------------
--1. Rename Column ADATE to AOPENDATE OF DEPOSIT_DETAIL table.
SP_RENAME 'DEPOSITE_DETAIL.ADATE','AOPENDATE'
SELECT *FROM DEPOSITE_DETAIL
--2. Delete Column AOPENDATE from the DEPOSIT_DETAIL table.
ALTER TABLE DEPOSITE_DETAIL
DROP COLUMN AOPENDATE
SELECT*FROM DEPOSITE_DETAIL
--3. Rename Column CNAME to CustomerName.
SP_RENAME 'DEPOSITE.CNAME','CUSTOMER NAME'
SELECT * FROM DEPOSITE
--------part:C-------CREATE TABLE STUDENT_DETAIL(ENROLLMENT_NO VARCHAR(20),NAME VARCHAR(35),CPI DECIMAL(5,2),BIRTHDATE DATETIME,)--1. Add two more columns City VARCHAR (20) (Not null) and Backlog INT (Null).
ALTER TABLE STUDENT_DETAIL
ADD CITY VARCHAR(20) NOT NULL,BACKLOG INT
SELECT * FROM STUDENT_DETAIL 
--2. Change the size of NAME column of student_detail from VARCHAR (25) to VARCHAR (35).
ALTER TABLE STUDENT_DETAIL
ALTER COLUMN NAME VARCHAR(35) 
SELECT * FROM STUDENT_DETAIL
--3. Change the data type DECIMAL to INT in CPI Column.
ALTER TABLE STUDENT_DETAIL
ALTER COLUMN CPI INT
SELECT * FROM STUDENT_DETAIL
--4. Rename Column Enrollment_No to ENO.
SP_RENAME 'STUDENT_DETAIL.ENROLLMENT_NO','ENO'
SELECT * FROM STUDENT_DETAIL
--5. Delete Column City from the student_detail table.
ALTER TABLE STUDENT_DETAIL
DROP COLUMN CITY
SELECT *FROM STUDENT_DETAIL
--6. Change name of table student_detail to STUDENT_MASTERSP_RENAME 'STUDENT_DETAIL','STUDENT_MASTER'SELECT*FROM STUDENT_MASTER
-------------DELET,TRUNCATE,DROP-------------------
---------part:A-----------
--1. Delete all the records of DEPOSIT_DETAIL table having amount greater than and equals to 4000. 
DELETE FROM DEPOSITE_DETAIL
WHERE AMOUNT>=4000
SELECT*FROM DEPOSITE_DETAIL
--2. Delete all the accounts CHANDI BRANCH.
DELETE FROM DEPOSITE_DETAIL
WHERE BNAME ='CHANDI'
SELECT*FROM DEPOSITE_DETAIL
--3. Delete all the accounts having account number (ANO) is greater than 105.
DELETE FROM DEPOSITE_DETAIL
WHERE ANO>105
SELECT* FROM DEPOSITE_DETAIL
--4. Delete all the records of Deposit_Detail table. (Use Truncate)
TRUNCATE TABLE DEPOSITE_DETAIL
--5. Remove Deposit_Detail table. (Use Drop)DROP TABLE DEPOSITE_DETAIL-------PART:B---------------------CREATE TABLE EMPLOYEE_MASTER(EMPNO INT,EMPNAME VARCHAR(20),JOININGYEAR DATETIME,SALARY DECIMAL(8,2),CITY VARCHAR(20))INSERT INTO EMPLOYEE_MASTER VALUES(101,'Keyur',5-1-02,12000.00,'Rajkot'),
(102,'Hardik',15-2-04,14000.00,'Ahmedabad'),
(103,'Kajal',14-3-06,15000.00,'Baroda'),
(104,'Bhoomi',23-6-05,12500.00,'Ahmedabad'),
(105,'Harmit',15-2-04,14000.00,'Rajkot'),
(106,'Mitesh',25-9-01,5000.00,'Jamnagar'),
(107,'Meera',Null,7000.00,'Morbi'),
(108,'Kishan',6-2-03,10000.00,'NULL')SELECT * FROM EMPLOYEE_MASTER--1. Delete all the records of Employee_MASTER table having salary greater than and equals to 14000.
DELETE FROM EMPLOYEE_MASTER
WHERE SALARY >=14000
SELECT * FROM EMPLOYEE_MASTER
--2. Delete all the Employees who belongs to ‘RAJKOT’ city.
DELETE FROM EMPLOYEE_MASTER
WHERE CITY='RAJKOT'
SELECT * FROM EMPLOYEE_MASTER
--3. Delete all the Employees who joined after 1-1-2007.
DELETE FROM EMPLOYEE_MASTER
WHERE JOININGYEAR<2007-1-1
SELECT * FROM EMPLOYEE_MASTER
--4. Delete the records of Employees whose joining date is null and Name is not null.
DELETE FROM EMPLOYEE_MASTER
WHERE JOININGYEAR IS NULL 
SELECT * FROM EMPLOYEE_MASTER
--5. Delete the records of Employees whose salary is 50% of 20000.

--6. Delete the records of Employees whose City Name is not empty.
DELETE FROM EMPLOYEE_MASTER
WHERE CITY IS <>NULL
SELECT * FROM EMPLOYEE_MASTER
--7. Delete all the records of Employee_MASTER table. (Use Truncate)
--8. Remove Employee_MASTER table. (Use Drop)