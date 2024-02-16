Use UkukhulaBursaryDB
Go

CREATE TABLE [dbo].[StudentApplication](
    [ApplicationID] [int] PRIMARY KEY IDENTITY(1, 1) NOT NULL,
    [YearOfStudies] [tinyint] NOT NULL,
    [AverageGrade] [int] NOT NULL,
    [Amount] [money] NOT NULL,
    [DateOfApplication] [date] NOT NULL,
    [Comment] [varchar](255)NOT NULL,
    [StudentID] [int] NOT NULL,
    [ProgramID] [int] NOT NULL,
    [StatusID] [int] NOT NULL

);

GO