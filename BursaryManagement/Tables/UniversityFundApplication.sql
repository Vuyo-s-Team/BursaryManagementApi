--Creating UniversityFundApplication table
CREATE TABLE [dbo].[UniversityFundApplication](
    [ApplicationID] [int] IDENTITY(1, 1) PRIMARY KEY NOT NULL,
    [FundingYear] [date] NOT NULL,
    [Comment] [varchar](255)NOT NULL,
    [UniversityID] [int] NOT NULL,
    [StatusID] [int] NOT NULL
);

GO
