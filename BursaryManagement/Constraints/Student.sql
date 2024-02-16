ALTER TABLE [dbo].[Student]
ADD CONSTRAINT AgeCheck CHECK (Age <=  35);
GO

ALTER TABLE [dbo].[Student]
ADD CONSTRAINT [ForeignKeyGenderID] FOREIGN KEY (GenderID) REFERENCES Gender(GenderID);
GO

ALTER TABLE [dbo].[Student]
ADD CONSTRAINT [ForeignKeyRaceID] FOREIGN KEY (RaceID) REFERENCES Race(RaceID);
GO

ALTER TABLE [dbo].[Student]
ADD CONSTRAINT [ForeignKeyUniversityID] FOREIGN KEY (UniversityID) REFERENCES University(UniversityID);
GO

