CREATE TABLE [dbo].[StudentYearlyFundAllocation](
    [StudentFundID] [int] IDENTITY(1, 1) PRIMARY KEY NOT NULL,
    [Budget] [money] NOT NULL,
    [FinancialYearStart] [date] NOT NULL,
    [UniversityFundID] [int] NOT NULL,
    [StudentID] [int] NOT NULL
);

GO