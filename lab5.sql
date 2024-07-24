CREATE TABLE STUDENT(
STUID INT,
FIRSTNAME VARCHAR(25),
LASTNAME VARCHAR(25),
WEBSITE VARCHAR(50),
CITY VARCHAR(25),
ADDRESS VARCHAR(100)
)
INSERT INTO STUDENT VALUES
(1011,'Keyur','Patel','techonthenet.com','Rajkot','A-303''VASANT KUNJ'',RAJKOT' ),
(1022,'Hardik','Shah','digminecraft.com','Ahmedabad','"RAM KRUPA",RAIYA ROAD'),
(1033,'Kajal','Trivedi','bigactivities.com','Baroda','Raj bhavan plot, near garden'),
(1044,'Bhoomi','Gajera','checkyourmath.com','Ahmedabad','“Jig’s Home”, Narol'),
(1055,'Harmit','Mitel','@me.darshan.com','Rajkot','B-55, Raj Residency'),
(1066,'Ashok','Jani',NULL,'Baroda','A502, Club House Building')
SELECT*FROM STUDENT
------------PART:A----------------------------
--1. Display the name of students whose name starts with ‘k’.
SELECT FIRSTNAME FROM STUDENT
WHERE FIRSTNAME LIKE 'K%'
SELECT * FROM STUDENT
--2. Display the name of students whose name consists of five characters.
SELECT FIRSTNAME FROM STUDENT
WHERE FIRSTNAME LIKE '_____'
SELECT * FROM STUDENT
--3. Retrieve the first name & last name of students whose city name ends with a & contains six characters.
SELECT FIRSTNAME,LASTNAME FROM STUDENT 
WHERE CITY LIKE '_____A'
SELECT * FROM STUDENT
--4. Display all the students whose last name ends with ‘tel’.
SELECT*FROM STUDENT
WHERE LASTNAME LIKE '%TEL'
SELECT * FROM STUDENT
--5. Display all the students whose first name starts with ‘ha’ & ends with‘t’.
SELECT * FROM STUDENT
WHERE FIRSTNAME LIKE 'HA%T'
SELECT * FROM STUDENT
--6. Display all the students whose first name starts with ‘k’ and third character is ‘y’.
SELECT * FROM STUDENT
WHERE FIRSTNAME LIKE 'K_Y%'
SELECT * FROM STUDENT
--7. Display the name of students having no website and name consists of five characters.
SELECT FIRSTNAME FROM STUDENT
WHERE WEBSITE IS NULL AND FIRSTNAME LIKE '_____'
SELECT * FROM STUDENT
--8. Display all the students whose last name consist of ‘jer’.
SELECT * FROM STUDENT 
WHERE LASTNAME LIKE '%JER%'
SELECT * FROM STUDENT
--9. Display all the students whose city name starts with either ‘r’ or ‘b’.
SELECT * FROM STUDENT 
WHERE CITY LIKE '[R,B]%'
SELECT * FROM STUDENT
--10. Display all the name students having websites.
SELECT * FROM STUDENT
WHERE WEBSITE IS NULL
SELECT * FROM STUDENT
--11. Display all the students whose name starts from alphabet A to H.
SELECT * FROM STUDENT
WHERE FIRSTNAME LIKE '[A-H]%'
SELECT * FROM STUDENT
--12. Display all the students whose name’s second character is vowel.
SELECT * FROM STUDENT
WHERE FIRSTNAME LIKE '_[A,E,I,O,U]%'
SELECT * FROM STUDENT
--13. Display the name of students having no website and name consists of minimum five characters.
SELECT FIRSTNAME FROM STUDENT
WHERE WEBSITE IS NULL AND FIRSTNAME LIKE '_____%'
SELECT * FROM STUDENT
--14. Display all the students whose last name starts with ‘Pat’.
SELECT*FROM STUDENT
WHERE LASTNAME LIKE 'PAL%'
SELECT * FROM STUDENT
--15. Display all the students whose city name does not starts with ‘b
SELECT * FROM STUDENT 
WHERE CITY NOT LIKE 'B%'
SELECT * FROM STUDENT
-----------------------PART:B---------------------
--1. Display all the students whose name starts from alphabet A or H.
SELECT * FROM STUDENT
WHERE FIRSTNAME LIKE '[A,H]%'
SELECT * FROM STUDENT
--2. Display all the students whose name’s second character is vowel and of and start with H.
SELECT * FROM STUDENT 
WHERE FIRSTNAME LIKE 'H[A,E,I,O,U]%'
SELECT * FROM STUDENT
--3. Display all the students whose last name does not ends with ‘a’.
SELECT * FROM STUDENT
WHERE FIRSTNAME NOT LIKE '%A'
SELECT * FROM STUDENT
--4. Display all the students whose first name starts with consonant.
SELECT * FROM STUDENT
WHERE FIRSTNAME NOT LIKE '[A,E,I,O,U]%'
SELECT * FROM STUDENT
--5. Display all the students whose website contains.neT
SELECT * FROM STUDENT
WHERE WEBSITE LIKE '%.COM%'
SELECT * FROM STUDENT
--------------------------PART:C-----------------------
--1. Display all the students whose address consist of -.
SELECT * FROM STUDENT
WHERE ADDRESS LIKE '%.%'
SELECT * FROM STUDENT
--2. Display all the students whose address contains single quote or double quote.
SELECT * FROM STUDENT
WHERE ADDRESS LIKE '%''%' OR ADDRESS LIKE '%"%'
SELECT * FROM STUDENT
--3. Display all the students whose website contains @.
SELECT * FROM STUDENT
WHERE WEBSITE LIKE '%@%'
SELECT * FROM STUDENT
--4. Display all the names those are either four or five characters
SELECT * FROM STUDENT
WHERE FIRSTNAME LIKE '[____,_____]'
SELECT * FROM STUDENT
