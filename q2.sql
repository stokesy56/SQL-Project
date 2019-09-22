--Commands to create respective tables with columns specified as primary keys and foreign keys
CREATE TABLE Venues
(
[Venue ID] int NOT NULL PRIMARY KEY,
[Academy Name] VARCHAR(30)
)

CREATE TABLE Courses
(
[Course ID] int NOT NULL PRIMARY KEY,
[Course Name] VARCHAR(30),
[Venue ID] int FOREIGN KEY REFERENCES Venues([Venue ID])
)

CREATE TABLE Employees
(
[Person ID] int NOT NULL PRIMARY KEY,
Name VARCHAR(40)
)

CREATE TABLE [Richmond Classrooms] 
(
Room VARCHAR(10) PRIMARY KEY,
[Venue ID] int NOT NULL FOREIGN KEY REFERENCES Venues([Venue ID])
)

CREATE TABLE Spartans
(
[Person ID] int NOT NULL FOREIGN KEY REFERENCES Employees([Person ID]), 
[Spartan ID] int NOT NULL PRIMARY KEY,
Name VARCHAR(40),
[Course ID] int NOT NULL FOREIGN KEY REFERENCES Courses([Course ID]),
Room VARCHAR(10) FOREIGN KEY REFERENCES [Richmond Classrooms](Room)
)

CREATE TABLE Trainers
(
[Person ID] int NOT NULL FOREIGN KEY REFERENCES Employees([Person ID]),
[Trainer ID] int NOT NULL PRIMARY KEY,
Name VARCHAR(40),
[Course ID] int NOT NULL FOREIGN KEY REFERENCES Courses([Course ID]),
Room VARCHAR(10) FOREIGN KEY REFERENCES [Richmond Classrooms](Room)
)

CREATE TABLE [Course Dates]
(
[Course ID] int NOT NULL FOREIGN KEY REFERENCES Courses([Course ID]),
[Start Date] DATE PRIMARY KEY,
[End Date] DATE
)



--Inserting values into their respective tables
--For whatever reason it takes two tries to do this... you have to first insert the empolyees, classrooms and venues data first then the rest in the 2nd try
INSERT INTO Courses 
VALUES
(1, 'BA-Test', 1),
(2, 'Engineering', 1),
(3, 'DevOps', 1) 

INSERT INTO Venues
VALUES
(1, 'Richmond')


INSERT INTO Employees
VALUES
(1, 'Tim Cawte'),
(2, 'Richard Gurney'),
(3, 'Adam Smith'),
(4, 'John Williams'),
(5, 'Nick Willis'),
(6, 'Jenny Jones'),
(7, 'Katie Prince'),
(8, 'Peter Brown'),
(9, 'Mo Khan'),
(10, 'Juan Carlos'),
(11, 'Jan Miller'),
(12, 'Kyle Carpenter'),
(13, 'Alvarao Carlos'),
(14, 'Margaret Baker'),
(15, 'Oti Mwase'),
(16, 'Filipe Paiva'),
(17, 'Rory Stokes'),
(18, 'Miles Eastwood'),
(19, 'Jillan Guillen'),
(20, 'Vishnu Jeyarathnam')

INSERT INTO Spartans
VALUES 
(3, 1, 'Adam Smith', 1,'Room 1'),
(4, 2, 'John Williams', 1,'Room 1'),
(5, 3, 'Nick Willis', 1,'Room 1'),
(6, 4, 'Jenny Jones', 1,'Room 1'),
(7, 5, 'Katie Prince', 1,'Room 1'),
(8, 6, 'Peter Brown', 1,'Room 1'),
(9, 7, 'Mo Khan', 2,'Room 3'),
(10, 8, 'Juan Carlos', 2,'Room 3'),
(11, 9, 'Jan Miller', 2,'Room 3'),
(12, 10, 'Kyle Carpenter', 2,'Room 3'),
(13, 11, 'Alvarao Carlos', 2,'Room 3'),
(14, 12, 'Margaret Baker', 2,'Room 3'),
(15, 13, 'Oti Mwase', 2,'Room 3'),
(17, 14, 'Rory Stokes',3,'Room 9'),
(18, 15, 'Miles Eastwood',3,'Room 9'),
(19, 16, 'Jillan Guillen',3,'Room 9'),
(20, 17, 'Vishnu Jeyarathnam',3,'Room 9')

INSERT INTO Trainers
VALUES
(1, 1, 'Tim Cawte', 1,'Room 1'),
(2, 2, 'Richard Gurney',2,'Room 3'),
(16, 3, 'Filipe Paiva',3,'Room 9')

INSERT INTO [Course Dates]
VALUES 
(1, '2018-01-15', '2018-03-02'),
(2, '2018-01-22', '2018-03-03'),
(3, '2019-09-09', '2019-11-15')

INSERT INTO [Richmond Classrooms]
VALUES 
('Room 1', 1),
('Room 3', 1),
('Room 9', 1)