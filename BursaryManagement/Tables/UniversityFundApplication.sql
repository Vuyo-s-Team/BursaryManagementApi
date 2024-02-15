--Creating UniversityFundApplication table
CREATE TABLE [dbo].[UniversityFundApplication](
    [ApplicationID] [int] IDENTITY(1, 1) PRIMARY KEY NOT NULL,
    [FundingYear] [date] NOT NULL,
    [Amount] [money] NOT NULL,
    [Comment] [varchar](255)NOT NULL,
    [UniversityID] [int] REFERENCES University(UniversityID),
    [StatusID] [int] REFERENCES Status(StatusID)
);

GO
