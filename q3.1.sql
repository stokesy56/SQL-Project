--Selects all the data from the word doc example in one table via the JOIN query
SELECT c.[Course Name], cd.[Start Date], cd.[End Date], v.[Academy Name], r.Room AS 'Room Name', t.Name AS 'Trainer', s.Name AS 'Spartan' FROM Courses c
JOIN [Course Dates] cd ON cd.[Course ID] = c.[Course ID]
JOIN Venues v ON v.[Venue ID] = c.[Venue ID]
JOIN Trainers t ON t.[Course ID] = c.[Course ID]
JOIN Spartans s ON s.[Course ID] = c.[Course ID]
JOIN [Richmond Classrooms] r ON r.Room = t.Room
