CREATE VIEW [dbo].[vUniversityFundAllocation]
  AS SELECT 
        university.[UniversityID], 
        university.[Budget], 
        university.[RemainingBudget], 
        bbd.[FinancialYearStart] 
     FROM 
        [dbo].[UniversityYearlyFundAllocation] university
     INNER JOIN 
        [dbo].[BBDYearlyFund] bbd
     ON
      university.[YearlyFundID] = bbd.[YearlyFundID]
GO

/*
SELECT * FROM [dbo].[BBDYearlyFund]
GO

SELECT * FROM [dbo].[University]
GO

INSERT INTO [dbo].[UniversityYearlyFundAllocation] ([Budget], [RemainingBudget], [YearlyFundID], [UniversityID])
VALUES (2000000000000, 200000, 1, 1),
       (250000, 200000, 1, 2),
       (403002, 1900, 1, 3);
GO

SELECT * FROM [dbo].[UniversityYearlyFundAllocation]
GO*/