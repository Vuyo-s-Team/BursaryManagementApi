Use UkukhulaBursaryDB
Go
CREATE TABLE [dbo].[UniversityYearlyFundAllocation]
(
  [UniversityFundID] [int] NOT NULL IDENTITY(1,1) PRIMARY KEY,
  [Budget] [money] DEFAULT 0,
  [RemainingBudget] [money] DEFAULT 0,
  [YearlyFundID] [int] DEFAULT YEAR(GETDATE()),
  [UniversityID] [int] NOT NULL
);
GO
