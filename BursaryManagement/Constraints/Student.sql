ALTER TABLE [dbo].[Student]
ADD CONSTRAINT AgeCheck CHECK (Age <=  35);
GO

ALTER TABLE [dbo].[Student]
ADD CONSTRAINT [ForeignKeyGenderID] FOREIGN KEY (GenderID) REFERENCES [dbo].[Gender](GenderID);
GO

ALTER TABLE [dbo].[Student]
ADD CONSTRAINT [ForeignKeyRaceID] FOREIGN KEY (RaceID) REFERENCES [dbo].[Race](RaceID);
GO

ALTER TABLE [dbo].[Student]
ADD CONSTRAINT [ForeignKeyUniversityID] FOREIGN KEY (UniversityID) REFERENCES [dbo].[University](UniversityID);
GO

