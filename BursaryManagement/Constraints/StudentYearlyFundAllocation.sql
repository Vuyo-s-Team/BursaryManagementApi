CREATE FUNCTION [dbo].[udfGetStudentStudentCapAmountForYear] (@FinancialYear int)
    RETURNS money
AS
BEGIN
    DECLARE @CapAmount money = 0
    SELECT @CapAmount = ([StudentFundCap]) FROM [dbo].[BBDYearlyFund] WHERE YEAR([FinancialYearStart]) = @FinancialYear
    RETURN @CapAmount
END
GO

CREATE FUNCTION [dbo].[udfGetBBDYearlyFund](@FinancialYear int)
    RETURNS int
AS
BEGIN
    DECLARE @BBDYearlyFund int = -1;
    SELECT @BBDYearlyFund = ([YearlyFundID]) FROM [dbo].[BBDYearlyFund] WHERE YEAR([FinancialYearStart]) = @FinancialYear
    RETURN @BBDYearlyFund
END
GO

CREATE FUNCTION [dbo].[udfGetUniversityRemainingBudgetForYear](@UniversityID int, @FinancialYear int)
    RETURNS money
AS
BEGIN
    DECLARE @RemainingBudget money = 0
    SELECT 
        @RemainingBudget = ([RemainingBudget]) 
    FROM 
        [dbo].[UniversityYearlyFundAllocation]
    WHERE
        [UniversityID] = @UniversityID AND [YearlyFundID] = [dbo].[udfGetBBDYearlyFund](@FinancialYear)
    RETURN @RemainingBudget
END
GO

ALTER TABLE [dbo].[StudentYearlyFundAllocation]
    ADD CONSTRAINT [CHK_StudentYearlyFundAllocation_Budget]
        CHECK ([Budget] <= [dbo].[udfGetStudentStudentCapAmountForYear] (YEAR([FinancialYearStart])))
GO


ALTER TABLE [dbo].[StudentYearlyFundAllocation]
    ADD CONSTRAINT [CHK_StudentYearlyFundAllocation_UniversityBudget]
        CHECK ([dbo].[udfGetUniversityRemainingBudgetForYear]([UniversityFundID],YEAR([FinancialYearStart])) - [Budget] >= 0)
GO

ALTER TABLE [dbo].[StudentYearlyFundAllocation]
    ADD CONSTRAINT [FK_StudentYearlyFundAllocation_University_UniversityID]
        FOREIGN KEY ([UniversityFundID])
        REFERENCES [dbo].[UniversityYearlyFundAllocation]([UniversityFundID])
GO

ALTER TABLE [dbo].[StudentYearlyFundAllocation]
    ADD CONSTRAINT [FK_StudentYearlyFundAllocation_Student_StudentID]
        FOREIGN KEY ([StudentID])
        REFERENCES [dbo].[Student]([StudentID])
GO
