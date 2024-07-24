-----------------------------queries for Group by with having and Order by-------------------------------------------
CREATE TABLE  SALES_DATA(
RIGION VARCHAR(50),
PRODUCT VARCHAR(50),
SALES_AMUONT INT,
YEAR INT
)

INSERT INTO  SALES_DATA VALUES
('North America','Watch',1500, 2023),
('Europe','Mobile',1200,2023),
('Asia','Watch', 1800, 2023),
('North America','TV',900, 2024),
('Europe','Watch',2000,2024),
('Asia','Mobile',1000, 2024),
('North America','Mobile',1600,2023),
('Europe','TV',1500,2023),
('Asia','TV',1100,2024),
('North America','Watch',1700,2024)SELECT * FROM SALES_DATA-----------------------------PART:A---------------------------------1. Display Total Sales Amount by Region.
SELECT RIGION,SUM(SALES_AMUONT) AS TOTAL_AMOUNT FROM SALES_DATA
GROUP BY RIGION
--2. Display Average Sales Amount by Product
SELECT PRODUCT, AVG(SALES_AMUONT) AS AVG_SALES FROM SALES_DATA
GROUP BY PRODUCT
--3. Display Maximum Sales Amount by Year
SELECT YEAR, MAX(SALES_AMUONT) AS YEAR_SALES FROM SALES_DATA
GROUP BY YEAR
--4. Display Minimum Sales Amount by Region and Year
SELECT RIGION,YEAR, MAX(SALES_AMUONT) FROM SALES_DATA
GROUP BY RIGION,YEAR
--5. Count of Products Sold by Region
SELECT RIGION,COUNT(PRODUCT) AS COUNT_PRODUCT FROM SALES_DATA
GROUP BY RIGION
--6. Display Sales Amount by Year and Product
SELECT YEAR,PRODUCT,SUM(SALES_AMUONT)AS DIPLAY_SALES FROM SALES_DATA
GROUP BY YEAR,PRODUCT
--7. Display Regions with Total Sales Greater Than 5000
SELECT RIGION, SUM(SALES_AMUONT) FROM SALES_DATA
GROUP BY RIGION
HAVING SUM(SALES_AMUONT)>5000
--8. Display Products with Average Sales Less Than 10000
SELECT PRODUCT, AVG(SALES_AMUONT) AS SALES FROM SALES_DATA
GROUP BY PRODUCT
HAVING AVG(SALES_AMUONT)<10000
--9. Display Years with Maximum Sales Exceeding 500
SELECT YEAR, MAX(SALES_AMUONT)AS SALES FROM SALES_DATA
GROUP BY YEAR 
HAVING MAX(SALES_AMUONT)>500
--10. Display Regions with at Least 3 Distinct Products Sold.
SELECT RIGION, COUNT(DISTINCT PRODUCT) AS DIS_PRODUCT FROM SALES_DATA
GROUP BY RIGION
HAVING COUNT(DISTINCT PRODUCT)>=3
--11. Display Years with Minimum Sales Less Than 1000
SELECT YEAR,MIN(SALES_AMUONT) AS MIN_SALES FROM SALES_DATA
GROUP BY YEAR
HAVING MIN(SALES_AMUONT)<1000
--12. Display Total Sales Amount by Region for Year 2023, Sorted by Total Amount
SELECT RIGION, SUM(SALES_AMUONT) AS SALE_RIG FROM SALES_DATA
WHERE YEAR = 2023
GROUP BY RIGION
------------------------------PART:B--------------------------------
--1. Display Count of Orders by Year and Region, Sorted by Year and Region
SELECT YEAR,RIGION,COUNT(SALES_AMUONT) AS COUNT_DATA FROM SALES_DATA
GROUP BY YEAR,RIGION
ORDER BY YEAR,RIGION
--2. Display Regions with Maximum Sales Amount Exceeding 1000 in Any Year, Sorted by Region
SELECT RIGION,MAX(SALES_AMUONT) AS MAX_AMOUNT FROM SALES_DATA
GROUP BY RIGION
HAVING MAX(SALES_AMUONT)>1000
ORDER BY RIGION
--3. Display Years with Total Sales Amount Less Than 1000, Sorted by Year Descending
SELECT YEAR, SUM(SALES_AMUONT) AS TOTAL_AMOUNT FROM SALES_DATA
GROUP BY YEAR
HAVING SUM(SALES_AMUONT)<1000
ORDER BY YEAR DESC
--4. Display Top 3 Regions by Total Sales Amount in Year 2024
SELECT TOP 3 RIGION, SUM(SALES_AMUONT) AS TOTAL_2024 FROM SALES_DATA
WHERE YEAR=2024
GROUP BY RIGION

-----------------------------PART:C----------------------------------
--1. Display Products with Average Sales Amount Between 1000 and 2000, Ordered by Product Name
SELECT PRODUCT, AVG(SALES_AMUONT) AS AVG_SALES FROM SALES_DATA
GROUP BY PRODUCT
HAVING AVG(SALES_AMUONT) BETWEEN 1000 AND 2000
ORDER BY PRODUCT
--2. Display Years with More Than 5 Orders from Each Region
SELECT YEAR,COUNT(PRODUCT) AS COUNT_ORDER FROM SALES_DATA
GROUP BY YEAR
HAVING COUNT(PRODUCT)>5
--3. Display Regions with Average Sales Amount Above 1500 in Year 2023 sort by amount in descending.
SELECT RIGION, AVG(SALES_AMUONT) FROM SALES_DATA
WHERE YEAR = 2023
GROUP BY RIGION
HAVING  AVG(SALES_AMUONT)>1500
ORDER BY AVG(SALES_AMUONT) DESC
--4. Find out region wise duplicate product.
SELECT RIGION, COUNT(PRODUCT), PRODUCT
FROM SALES_DATA
GROUP BY PRODUCT,RIGION
having count(PRODUCT)>1
--5. Find out region wise highest sales amount.
SELECT RIGION, MAX(SALES_AMUONT) AS MAX_SALE FROM SALES_DATA
GROUP BY RIGION

