CREATE TABLE [dbo].[BBDYearlyFund]
(
  [YearlyFundID] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
  [TotalAmount] MONEY DEFAULT 0,
  [RemainingAmount] MONEY DEFAULT 0,
  [FinancialYearStart] DATE DEFAULT GETDATE(),
  [StudentFundCap] Money DEFAULT 0
);
GO
