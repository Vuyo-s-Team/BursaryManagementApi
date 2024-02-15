CREATE TABLE [dbo].[Student](
    [StudentID] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
    [IDNumber] [varchar](13) NOT NULL,
    [BirthDate] [date] NOT NULL,
    [Age] [tinyint] NOT NULL,
    [GenderID] [int] REFERENCES Gender(GenderID),
    [UniversityID] [int] REFERENCES University(UniversityID),
    [RaceID] [int] REFERENCES Race(RaceID)
)