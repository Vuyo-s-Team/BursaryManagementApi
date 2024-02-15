CREATE TABLE [dbo].[StudentApplication](
    [ApplicationID] [int] PRIMARY KEY IDENTITY(1, 1) NOT NULL,
    [YearOfStudies] [tinyint] NOT NULL,
    [AverageGrade] [int] NOT NULL,
    [Amount] [money] NOT NULL,
    [DateOfApplication] [date] NOT NULL,
    [Comment] [varchar](255)NOT NULL,
    [StudentID] [int] REFERENCES Student(StudentID),
    [ProgramID] [int] REFERENCES Program(ProgramID),
    [StatusID] [int] REFERENCES Status(StatusID)

);

GO