Use UkukhulaBursaryDB
Go

CREATE TABLE [dbo].[BBDYearlyFund]
(
  [YearlyFundID] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
  [TotalAmount] [money] DEFAULT 0,
  [RemainingAmount] [money] DEFAULT 0,
  [FinancialYearStart] [date] DEFAULT GETDATE(),
  [StudentFundCap] [money] DEFAULT 0
);
GO
