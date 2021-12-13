#Basic Queries

#problem1:Get all the names of students in the database

"select Name FROM students"

#problem2:Get all the data of students above 30 years old
"select * FROM students
 WHERE Age > 30"

#problem3:Get the names of the females who are 30 years old
"select Name FROM students
 WHERE Gender= 'F'
 AND Age= 30"

#problem4:Get the number of Points of Alex 
"select Points FROM students
 WHERE Name= 'Alex'"

#problem5:Add yourself as a new student (your name, your age...) 
"INSERT INTO students VALUES (7,'Souad',22,'F',600);"

#problem6:Increase the points of Basma because she solved a new exercise 
"UPDATE students
 SET Points = Points +1
 WHERE Name = 'Basma'"

#problem7:Decrease the points of Alex because he's late today 
"UPDATE students
 SET Points = Points -1
 WHERE Name = 'Alex'"


#Creating Table
"CREATE TABLE graduates(
 ID INTEGER PRIMARY KEY AUTOINCREMENT,
 NAME TEXT NOT NULL UNIQUE,
 Age INT,
 Gender TEXT,
 Points INT,
 Graduation date
 );"

#problem1:Copy Layal's data from students to graduates
"INSERT INTO graduates(Name,Age,Gender,Points)
 SELECT name,Age,Gender,Points
 FROM students
 WHERE name='Layal' "

#problem2:Add the graduation date previously mentioned to Layal's record in graduates
"UPDATE graduates 
SET Graduation = '2018-09-08' 
WHERE Name = 'Layal'"

#problem3:Remove Layal's record from students
"DELETE FROM students
 WHERE name='Layal'"


#Joins

#problem1:Produce a table that contains, for each employee, his/her name, company name, and company date.
"SELECT employees.name, companies.name, companies.Date
 FROM employees
 INNER JOIN companies	
 ON employees.Company = companies.Name"

 #problem2:Find the name of employees that work in companies made before 2000   
"SELECT employees.name
 FROM employees
 INNER JOIN companies
 ON companies.name = employees.Company WHERE companies.Date<2000"

 #problem3:Find the name of company that has a graphic designer.

 "SELECT employees.Company
 FROM employees
 INNER JOIN companies
 ON companies.name = employees.Company WHERE Role="Graphic Designer""
 #OR
 "SELECT employees.Company
  FROM employees
  WHERE Role = "Graphic Designer""



