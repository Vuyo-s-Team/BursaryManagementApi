CREATE TABLE [dbo].[Student](
    [StudentID] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
    [IDNumber] [varchar](13) NOT NULL,
    [BirthDate] [date] NOT NULL,
    [Age] [tinyint] NOT NULL,
    [GenderID] [int] NOT NULL,
    [UniversityID] [int] NOT NULL,
    [RaceID] [int] NOT NULL
)