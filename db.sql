CREATE TABLE Directions (
    DirectionID INT PRIMARY KEY IDENTITY(1,1),
    DirectionName NVARCHAR(100) NOT NULL
);

CREATE TABLE Groups (
    GroupID INT PRIMARY KEY IDENTITY(1,1),
    GroupName NVARCHAR(100) NOT NULL,
    DirectionID INT,
    FOREIGN KEY (DirectionID) REFERENCES Directions(DirectionID)
);

CREATE TABLE Students (
    StudentID INT PRIMARY KEY IDENTITY(1,1),
    LastName NVARCHAR(50) NOT NULL,
    FirstName NVARCHAR(50) NOT NULL,
    MiddleName NVARCHAR(50),
    BirthDate DATE NOT NULL,
    City NVARCHAR(100),
    Street NVARCHAR(100),
    HouseNumber NVARCHAR(10),
    Email NVARCHAR(100),
    GroupID INT,
    Budget BIT,
    FOREIGN KEY (GroupID) REFERENCES Groups(GroupID)
);

CREATE TABLE Phones (
    PhoneID INT PRIMARY KEY IDENTITY(1,1),
    StudentID INT,
    PhoneNumber NVARCHAR(20),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);

INSERT INTO Directions (DirectionName) VALUES
('Philosophy'),
('Mathematics'),
('Physics');

INSERT INTO Groups (GroupName, DirectionID) VALUES
('Phil-101', 101),
('Phil-102', 101),
('Phil-102', 101),
('Math-201', 201),
('Math-202', 201),
('Math-203', 201),
('Phys-101', 301),
('Phys-302', 301),
('Phys-303', 301);

INSERT INTO Students (full_name, birth_date, city, street, house_number, phone, email, group_number, direction_id, tuition_type) VALUES
('Ivan Ivanov', '2000-01-15', 'Moscow', 'Lenina', '10', '8976548902', 'ivanov@mail.com', 'Phil-101', 101, 'budget'),
('Maria Petrova', '2000-05-20', 'Moscow', 'Gorkogo', '5', '8749568475', 'mpetrova@mail.com', 'Phil-101', 101, 'budget'),
('Alexander Sidorov', '2000-08-10', 'Moscow', 'Pushkinskaya', '25', '0394857684', 'asidorov@mail.com', 'Phil-101', 101, 'budget'),
('Olga Smirnova', '2001-02-01', 'Moscow', 'Tverskaya', '30', '9458689476', 'osmirnova@mail.com', 'Phil-101', 101, 'budget'),
('Dmitry Egorov', '2000-11-12', 'Moscow', 'Arbat', '7', '1357986754', 'degorov@mail.com', 'Phil-101', 101, 'budget'),
('Anna Kuznetsova', '2000-03-18', 'Moscow', 'Novaya', '2', '8343276859', 'akuznetsova@mail.com', 'Phil-101', 101, 'budget'),
('Anna Petrova', '2002-05-20', 'Moscow', 'Tverskaya', '25', '7485643728', 'petrova@mail.com', 'Phil-101', 101, 'budget'),
('Anna Ivanova', '2001-05-20', 'Moscow', 'Lenina', '10', '123456789', 'ivanova@mail.com', 'Phil-102', 101, 'budget'),
('Dmitry Petrov', '2000-08-15', 'Moscow', 'Lenina', '10', '987654321', 'petrov@mail.com', 'Phil-102', 101, 'non-budget'),
('Olga Sidorova', '2002-01-10', 'Moscow', 'Lenina', '10', '555555955', 'sidorova@mail.com', 'Phil-102', 101, 'budget'),
('Dmitry Smirnov', '2001-08-15', 'Moscow', 'Pushkinskaya', '30', '282222222', 'smirnov@mail.com', 'Phil-102', 101, 'non-budget'),
('Petr Petrov', '1999-02-20', 'Moscow', 'Pushkina', '15', '987654321', 'petrovv@mail.com', 'Phil-102', 101, 'non-budget'),
('Svetlana Ivanova', '1999-07-10', 'Moscow', 'Tverskaya', '12', '123456789', 'sivanova@mail.com', 'Phil-102', 101, 'non-budget'),
('Mikhail Voronov', '1998-12-05', 'Moscow', 'Lenina', '20', '555565555', 'mvoronov@mail.com', 'Phil-102', 101, 'non-budget'),
('Elena Kozlova', '2000-04-25', 'Moscow', 'Gagarina', '8', '114111111', 'ekozlova@mail.com', 'Phil-103', 101, 'non-budget'),
('Andrey Nikitin', '1999-09-30', 'Moscow', 'Novaya', '17', '222222232', 'anikitin@mail.com', 'Phil-103', 101, 'non-budget'),
('Yulia Smirnova', '2000-06-08', 'Moscow', 'Pushkinskaya', '3', '332333333', 'ysmirnova@mail.com', 'Phil-103', 101, 'non-budget'),
('Sergey Sergeev', '2001-03-25', 'Moscow', 'Gagarina', '20', '552555555', 'sergeev@mail.com', 'Phil-103', 101, 'budget'),
('Natalia Ivanova', '2001-08-20', 'Moscow', 'Lenina', '18', '123456789', 'nivanova@mail.com', 'Phil-103', 101, 'budget'),
('Denis Popov', '2000-12-10', 'Moscow', 'Tverskaya', '23', '987654321', 'dpopov@mail.com', 'Phil-103', 101, 'budget'),
('Ekaterina Petrova', '2001-02-01', 'Moscow', 'Arbat', '6', '111112111', 'epetrova@mail.com', 'Phil-103', 101, 'budget'),
('Marina Popova', '2001-11-30', 'Moscow', 'Gagarina', '20', '444442444', 'popova@mail.com', 'Math-201', 201, 'budget'),
('Igor Petrov', '2000-09-12', 'Moscow', 'Gagarina', '20', '666666626', 'igor@mail.com', 'Math-201', 201, 'non-budget'),
('Tatiana Egorova', '2002-02-25', 'Moscow', 'Gagarina', '20', '777727777', 'egorova@mail.com', 'Math-201', 201, 'budget'),
('Ekaterina Smirnova', '2001-08-20', 'Moscow', 'Lenina', '10', '1112223334', 'smirnova@mail.com', 'Math-201', 201, 'budget'),
('Andrey Ivanov', '2000-11-15', 'Moscow', 'Lenina', '10', '5556667778', 'ivanov_andrey@mail.com', 'Math-201', 201, 'non-budget'),
('Nikolay Petrov', '2002-02-10', 'Moscow', 'Lenina', '10', '9990001112', 'petrov_nikolay@mail.com', 'Math-201', 201, 'budget'),
('Yulia Popova', '1999-10-05', 'Moscow', 'Pushkina', '15', '3334445556', 'popova_yulia@mail.com', 'Math-201', 201, 'non-budget'),
('Maxim Sidorov', '2000-05-22', 'Moscow', 'Pushkina', '15', '7778889990', 'sidorov_maxim@mail.com', 'Math-202', 201, 'budget'),
('Yana Kuznetsova', '2001-12-17', 'Moscow', 'Pushkina', '15', '2223334445', 'kuznetsova_yana@mail.com', 'Math-202', 201, 'non-budget'),
('Anton Egorov', '2001-06-30', 'Moscow', 'Gagarina', '20', '8889990001', 'egorov_anton@mail.com', 'Math-202', 201, 'budget'),
('Maria Ivanova', '2000-04-12', 'Moscow', 'Gagarina', '20', '4445556667', 'ivanova_maria@mail.com', 'Math-202', 201, 'non-budget'),
('Vadim Petrov', '2002-09-25', 'Moscow', 'Gagarina', '20', '2223334445', 'petrov_vadim@mail.com', 'Math-202', 201, 'budget'),
('Igor Novikov', '2001-04-10', 'Moscow', 'Lenina', '21', '3216549870', 'novikov_igor@mail.com', 'Math-202', 201, 'budget'),
('Svetlana Kravchenko', '2000-11-18', 'Moscow', 'Lenina', '22', '1472583690', 'kravchenko_svetlana@mail.com', 'Math-202', 201, 'non-budget'),
('Pavel Kuznetsov', '2002-03-24', 'Moscow', 'Lenina', '23', '9638527410', 'kuznetsov_pavel@mail.com', 'Math-203', 201, 'budget'),
('Olga Morozova', '1999-05-14', 'Moscow', 'Lenina', '24', '8529637410', 'morozova_olga@mail.com', 'Math-203', 201, 'budget'),
('Natalia Kozlova', '2000-08-12', 'Moscow', 'Lenina', '25', '9513572580', 'kozlova_natalia@mail.com', 'Math-203', 201, 'non-budget'),
('Denis Morozov', '2001-06-18', 'Moscow', 'Lenina', '26', '7539518520', 'morozov_denis@mail.com', 'Math-203', 201, 'budget'),
('Yana Smirnova', '2002-02-20', 'Moscow', 'Lenina', '27', '1597532580', 'smirnova_yana@mail.com', 'Math-203', 201, 'non-budget'),
('Sergey Petrov', '2001-09-12', 'Moscow', 'Lenina', '28', '3579512580', 'petrov_sergey@mail.com', 'Math-203', 201, 'non-budget'),
('Yulia Ivanova', '2000-10-10', 'Moscow', 'Lenina', '29', '7894561230', 'ivanova_yulia@mail.com', 'Math-203', 201, 'budget'),
('Igor Sidorov', '2002-05-25', 'Moscow', 'Lenina', '30', '7418529630', 'sidorov_igor@mail.com', 'Math-203', 201, 'budget'),
('Anna Voronova', '2001-07-15', 'Moscow', 'Lenina', '31', '1597532580', 'voronova_anna@mail.com', 'Math-203', 201, 'budget'),
('Pavel Ivanov', '2000-11-10', 'Moscow', 'Lenina', '32', '9638527410', 'ivanov_pavel@mail.com', 'Math-203', 201, 'budget'),
('Nikolay Sidorov', '2001-03-12', 'Moscow', 'Lenina', '33', '4561237890', 'sidorov_nikolay@mail.com', 'Math-203', 201, 'non-budget'),
('Vadim Kuznetsov', '2000-01-05', 'Moscow', 'Lenina', '34', '1597532580', 'kuznetsov_vadim@mail.com', 'Math-203', 201, 'budget');
('Alina Orlova', '2002-01-09', 'Moscow', 'Lenina', '30', '9517538420', 'orlova_alina@mail.com', 'Phys-301', 301, 'non-budget'),
('Kirill Smirnov', '2001-11-13', 'Moscow', 'Pushkina', '11', '9514873260', 'smirnov_kirill@mail.com', 'Phys-301', 301, 'budget'),
('Veronika Pavlova', '2000-04-04', 'Moscow', 'Pushkina', '12', '7532148690', 'pavlova_veronika@mail.com', 'Phys-301', 301, 'non-budget'),
('Vladimir Semenov', '2002-08-20', 'Moscow', 'Pushkina', '13', '3574682190', 'semenov_vladimir@mail.com', 'Phys-301', 301, 'budget'),
('Polina Vinogradova', '2001-02-27', 'Moscow', 'Pushkina', '14', '2135468790', 'vinogradova_polina@mail.com', 'Phys-301', 301, 'non-budget'),
('Alexandr Fedorov', '2000-05-19', 'Moscow', 'Pushkina', '15', '8795463210', 'fedorov_alexandr@mail.com', 'Phys-301', 301, 'budget'),
('Daria Alekseeva', '2002-03-16', 'Moscow', 'Pushkina', '16', '6482753190', 'alekseeva_daria@mail.com', 'Phys-301', 301, 'non-budget'),
('Vsevolod Pavlov', '1999-08-15', 'Moscow', 'Lenina', '52', '9513573840', 'pavlovv_oleg@mail.com', 'Phys-302', 301, 'budget'),
('Liliya Bogdanova', '2000-10-08', 'Moscow', 'Pushkina', '18', '7895123460', 'bogdanova_liliya@mail.com', 'Phys-302', 301, 'non-budget'),
('Stanislav Zaitsev', '2002-12-30', 'Moscow', 'Pushkina', '19', '3571598240', 'zaitsev_stanislav@mail.com', 'Phys-302', 301, 'budget'),
('Irina Nikolaeva', '2001-03-22', 'Moscow', 'Pushkina', '20', '9512486370', 'nikolaeva_irina@mail.com', 'Phys-302', 301, 'non-budget'),
('Oleg Pavlov', '1999-06-15', 'Moscow', 'Gagarina', '31', '9513572840', 'pavlov_oleg@mail.com', 'Phys-302', 301, 'budget'),
('Natalia Guseva', '2000-10-10', 'Moscow', 'Gagarina', '32', '7891236540', 'guseva_natalia@mail.com', 'Phys-302', 301, 'non-budget'),
('Evgeny Mikhailov', '2002-02-05', 'Moscow', 'Gagarina', '33', '6547891230', 'mikhailov_evgeny@mail.com', 'Phys-302', 301, 'budget'),
('Viktor Sorokin', '2000-04-25', 'Moscow', 'Gagarina', '35', '1478963250', 'sorokin_viktor@mail.com', 'Phys-303', 301, 'budget'),
('Yana Romanova', '1999-11-11', 'Moscow', 'Gagarina', '36', '9517534860', 'romanova_yana@mail.com', 'Phys-303', 301, 'non-budget'),
('Maxim Zhukov', '2001-05-21', 'Moscow', 'Gagarina', '37', '7896543210', 'zhukov_maxim@mail.com', 'Phys-303', 301, 'budget'),
('Elizaveta Smirnova', '2002-06-10', 'Moscow', 'Gagarina', '38', '2589631470', 'smirnova_elizaveta@mail.com', 'Phys-303', 301, 'non-budget'),
('Daniil Vinogradov', '2000-02-14', 'Moscow', 'Gagarina', '39', '9632587410', 'vinogradov_daniil@mail.com', 'Phys-303', 301, 'budget'),
('Tatiana Solovyova', '2001-10-18', 'Moscow', 'Gagarina', '40', '7539516240', 'solovyova_tatiana@mail.com', 'Phys-303', 301, 'non-budget'),
('Denis Frolov', '2002-03-12', 'Moscow', 'Gagarina', '41', '1596847230', 'frolov_denis@mail.com', 'Phys-303', 301, 'budget');

SELECT s.LastName, s.FirstName, s.MiddleName, s.Budget, g.GroupName
FROM Students s
JOIN Groups g ON s.GroupID = g.GroupID
JOIN Directions d ON g.DirectionID = d.DirectionID
WHERE d.DirectionName = 'Philosophy'
ORDER BY s.LastName;

SELECT s.LastName, s.FirstName, s.MiddleName, g.GroupName, d.DirectionName
FROM Students s
JOIN Groups g ON s.GroupID = g.GroupID
JOIN Directions d ON g.DirectionID = d.DirectionID
WHERE s.LastName LIKE 'R%'
ORDER BY s.LastName;

SELECT s.LastName + ' ' + LEFT(s.FirstName, 1) + '.' + LEFT(s.MiddleName, 1) + '.' AS [Фамилия И.О.],
       DAY(s.BirthDate) AS [День],
       DATENAME(MONTH, s.BirthDate) AS [Месяц],
       g.GroupName,
       d.DirectionName
FROM Students s
JOIN Groups g ON s.GroupID = g.GroupID
JOIN Directions d ON g.DirectionID = d.DirectionID
ORDER BY MONTH(s.BirthDate), DAY(s.BirthDate);

SELECT s.LastName, s.FirstName, s.MiddleName, 
       DATEDIFF(YEAR, s.BirthDate, GETDATE()) AS Age
FROM Students s;

SELECT s.LastName, s.FirstName, s.MiddleName, 
       g.GroupName, d.DirectionName
FROM Students s
JOIN Groups g ON s.GroupID = g.GroupID
JOIN Directions d ON g.DirectionID = d.DirectionID
WHERE MONTH(s.BirthDate) = MONTH(GETDATE());

SELECT d.DirectionName, COUNT(s.StudentID) AS StudentCount
FROM Students s
JOIN Groups g ON s.GroupID = g.GroupID
JOIN Directions d ON g.DirectionID = d.DirectionID
GROUP BY d.DirectionName;

SELECT g.GroupName, d.DirectionName, 
       SUM(CASE WHEN s.Budget = 1 THEN 1 ELSE 0 END) AS BudgetCount,
       SUM(CASE WHEN s.Budget = 0 THEN 1 ELSE 0 END) AS NonBudgetCount
FROM Students s
JOIN Groups g ON s.GroupID = g.GroupID
JOIN Directions d ON g.DirectionID = d.DirectionID
GROUP BY g.GroupName, d.DirectionName;

CREATE TABLE Teachers (
    TeacherID INT PRIMARY KEY IDENTITY(1,1),
    LastName NVARCHAR(50) NOT NULL,
    FirstName NVARCHAR(50) NOT NULL,
    MiddleName NVARCHAR(50)
);

CREATE TABLE Subjects (
    SubjectID INT PRIMARY KEY IDENTITY(1,1),
    SubjectName NVARCHAR(100) NOT NULL,
    DirectionID INT,
    FOREIGN KEY (DirectionID) REFERENCES Directions(DirectionID)
);

CREATE TABLE TeacherSubjects (
    TeacherID INT,
    SubjectID INT,
    FOREIGN KEY (TeacherID) REFERENCES Teachers(TeacherID),
    FOREIGN KEY (SubjectID) REFERENCES Subjects(SubjectID),
    PRIMARY KEY (TeacherID, SubjectID)
);

CREATE TABLE Grades (
    GradeID INT PRIMARY KEY IDENTITY(1,1),
    StudentID INT,
    SubjectID INT,
    Grade INT CHECK (Grade IN (2, 3, 4, 5)),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (SubjectID) REFERENCES Subjects(SubjectID)
);

INSERT INTO Teachers (LastName, FirstName, MiddleName) VALUES
('Popovich', 'Alexei', 'Kirillovich'),
('Abromovich', 'Vlada', 'Olegovna'),
('Semenovich', 'Stepan', 'Alexeevich'),

INSERT INTO Subjects (SubjectName, DirectionID) VALUES
('Philosophy 101', 101),
('Mathematics 201', 201),
('Physics 201', 301),
('Philosophy 102', 101),
('Mathematics 202', 201),
('Physics 302', 301),
('Philosophy 103', 101);
('Mathematics 203', 201),
('Physics 303', 301),

SELECT s.SubjectName, t.LastName, t.FirstName, t.MiddleName, g.GroupName
FROM Subjects s
JOIN TeacherSubjects ts ON s.SubjectID = ts.SubjectID
JOIN Teachers t ON ts.TeacherID = t.TeacherID
JOIN Grades gr ON s.SubjectID = gr.SubjectID
JOIN Students st ON gr.StudentID = st.StudentID
JOIN Groups g ON st.GroupID = g.GroupID
ORDER BY s.SubjectName, g.GroupName;

SELECT TOP 1 s.SubjectName, COUNT(gr.StudentID) AS StudentCount
FROM Grades gr
JOIN Subjects s ON gr.SubjectID = s.SubjectID
GROUP BY s.SubjectName
ORDER BY StudentCount DESC;

SELECT t.LastName, t.FirstName, t.MiddleName, COUNT(DISTINCT gr.StudentID) AS StudentCount
FROM Teachers t
JOIN TeacherSubjects ts ON t.TeacherID = ts.TeacherID
JOIN Grades gr ON ts.SubjectID = gr.SubjectID
GROUP BY t.LastName, t.FirstName, t.MiddleName;

SELECT s.SubjectName, 
       CAST(SUM(CASE WHEN gr.Grade > 2 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(gr.StudentID) * 100 AS PassRate
FROM Grades gr
JOIN Subjects s ON gr.SubjectID = s.SubjectID
GROUP BY s.SubjectName;

SELECT s.SubjectName, AVG(gr.Grade) AS AverageGrade
FROM Grades gr
JOIN Subjects s ON gr.SubjectID = s.SubjectID
WHERE gr.Grade > 2
GROUP BY s.SubjectName;

SELECT TOP 1 g.GroupName, AVG(gr.Grade) AS AverageGrade
FROM Grades gr
JOIN Students st ON gr.StudentID = st.StudentID
JOIN Groups g ON st.GroupID = g.GroupID
GROUP BY g.GroupName
ORDER BY AverageGrade DESC;

SELECT st.LastName, st.FirstName, st.MiddleName
FROM Students st
WHERE NOT EXISTS (
    SELECT 1
    FROM Grades gr
    WHERE gr.StudentID = st.StudentID AND gr.Grade < 4
);

SELECT st.LastName, st.FirstName, st.MiddleName
FROM Students st
JOIN Grades gr ON st.StudentID = gr.StudentID
WHERE gr.Grade = 2
GROUP BY st.LastName, st.FirstName, st.MiddleName
HAVING COUNT(gr.Grade) >= 2;

SELECT s.SubjectName, COUNT(a.AttendanceID) AS AttendedCount
FROM Attendance a
JOIN Subjects s ON a.SubjectID = s.SubjectID
WHERE a.Attended = 1 AND s.SubjectName = 'Mathematics 101'
GROUP BY s.SubjectName;

SELECT s.SubjectName, COUNT(a.AttendanceID) AS MissedCount
FROM Attendance a
JOIN Subjects s ON a.SubjectID = s.SubjectID
WHERE a.Attended = 0 AND s.SubjectName = 'Mathematics 101'
GROUP BY s.SubjectName;

SELECT t.LastName, t.FirstName, t.MiddleName, a.Date, a.TimetableID, COUNT(a.StudentID) AS StudentCount
FROM Attendance a
JOIN Teachers t ON a.TeacherID = t.TeacherID
WHERE t.LastName = 'Ivanov'
GROUP BY t.LastName, t.FirstName, t.MiddleName, a.Date, a.TimetableID;

SELECT s.LastName, s.FirstName, s.MiddleName, sub.SubjectName, 
       SUM(DATEDIFF(MINUTE, tt.StartTime, tt.EndTime)) AS TotalMinutes
FROM Attendance a
JOIN Students s ON a.StudentID = s.StudentID
JOIN Subjects sub ON a.SubjectID = sub.SubjectID
JOIN Timetable tt ON a.TimetableID = tt.TimetableID
WHERE a.Attended = 1
GROUP BY s.LastName, s.FirstName, s.MiddleName, sub.SubjectName;


