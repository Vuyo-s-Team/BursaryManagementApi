CREATE FUNCTION [dbo].[udfGetFinancialYearRemainingAmount] (@BBDYearlyFundID int)
    RETURNS money
AS
BEGIN
    DECLARE @RemainingAmount money = 0
    SELECT @RemainingAmount = ([RemainingAmount]) FROM [dbo].[BBDYearlyFund] WHERE [YearlyFundID] = @BBDYearlyFundID
    RETURN @RemainingAmount
END
GO

ALTER TABLE [dbo].[UniversityYearlyFundAllocation]
    ADD CONSTRAINT [FK_UniversityYearlyFundAllocation_University_UniversityID]
        FOREIGN KEY ([UniversityID])
        REFERENCES [dbo].[University]([UniversityID])
GO

ALTER TABLE [dbo].[UniversityYearlyFundAllocation]
    ADD CONSTRAINT [CHK_UniversityYearlyFundAllocation_Budget]
        CHECK ([dbo].[udfGetFinancialYearRemainingAmount]([YearlyFundID]) - [Budget] >= 0)
GO

ALTER TABLE [dbo].[UniversityYearlyFundAllocation]
    ADD CONSTRAINT [CHK_UniversityYearlyFundAllocation_RemainingBudget]
        CHECK ([RemainingBudget] >= 0)


