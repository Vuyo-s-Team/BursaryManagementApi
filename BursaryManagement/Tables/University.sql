--Creating University table
CREATE TABLE [dbo].[University] (
    [UniversityID] [int] IDENTITY(1, 1) PRIMARY KEY NOT NULL,
    [Name] [varchar](120) NOT NULL,
    [ProvinceID] [int] NOT NULL
);
 
GO