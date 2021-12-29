#Problem 1
CREATE DATABASE class_one_assignment

#Problem 2
USE class_one_assignment
CREATE TABLE customers(
First_Name VARCHAR(50) NOT NULL,
Last_Name VARCHAR(50) NOT NULL,
Date_of_Birth DATE,
Phone VARCHAR(50),
Address VARCHAR(50),
City VARCHAR(50),
State VARCHAR(50),
Points INT
);

#Problem 3 (a,b,c,d,e)
INSERT INTO customers(First_Name,Last_Name,Date_of_Birth,Phone,Address,City,State,Points)
VALUES ('Babara','MacCaffrey','1986-03-28','781-932-9754','0 Sage Terrace','Waltham','MA','2273'),
('Ines','Brushfield','1986-04-13','804-427-9456','14187 Commercial Trail','Hampton','VA','947'),
('Freddi','Boagey','1985-02-07','719-724-7869','251 Springs Junction','Colorado Springs','CO','2967'),
('Ambur','Roseburgh','1974-04-14','407-231-8017','30 Arapahoe Terrace','Orlando','FL','457'),
('Clemmie','Betchley','1973-11-07','','5 Spohn Circle','Arlington','TX','3675')

SELECT * FROM customers

#Problem 4
SELECT * FROM customers WHERE Points>1000
LIMIT 2

#Problem 5
SELECT * FROM customers WHERE (Date_of_Birth BETWEEN '1980-01-01' AND '1990-12-31') OR (Points<1000)

#Problem 6
SELECT * FROM customers ORDER BY Points ASC
SELECT * FROM customers ORDER BY Points DESC

#Problem 7
SELECT * FROM customers WHERE (First_Name LIKE '%burgh%' OR Last_Name LIKE '%burgh%')
SELECT * FROM customers WHERE (First_Name REGEXP 'burgh' OR Last_Name REGEXP 'burgh')

#Problem 8
SELECT * FROM customers WHERE (Phone IS NULL OR Phone = '')

#Problem 9
ALTER TABLE customers CHANGE Date_of_Birth dob DATE

#Problem 10
SELECT * FROM customers WHERE Points = (SELECT MAX(points) FROM customers)

#Problem 11
SELECT *,
CASE WHEN Points<1000 THEN 'They are Bronze members'
     WHEN (Points>1000 AND Points <2000) THEN 'They are Silver members'
     WHEN (Points>2000 AND Points <3000) THEN 'They are Gold members'
     WHEN Points>3000 THEN 'They are Platinum members'
     ELSE 'Points level crossed'
END AS Remarks FROM customers

