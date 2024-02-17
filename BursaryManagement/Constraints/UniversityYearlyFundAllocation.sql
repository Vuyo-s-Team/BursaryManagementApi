CREATE FUNCTION [dbo].[udfGetUniversityRemainingAmount] (@FundID int)
    RETURNS money
AS
BEGIN
    DECLARE @RemainingAmount money =  0

    SELECT @RemainingAmount = ([Budget])   
    FROM [dbo].[UniversityYearlyFundAllocation]   
    WHERE UniversityFundID = @FundID   
    - (SELECT SUM(budget)   
       FROM [dbo].[StudentYearlyFundAllocation]   
       WHERE UniversityFundID = @FundID)

    RETURN @RemainingAmount
END
GO

CREATE FUNCTION [dbo].[udfGetBBDYearlyFundRemainingAmount] (@FundID int)
    RETURNS money
AS 
BEGIN
    DECLARE @RemainingAmount money =  0

    SELECT 
        @RemainingAmount = ([RemainingAmount]) 
    FROM 
        [dbo].[BBDYearlyFund]
    WHERE
        [YearlyFundID] = @FundID

    RETURN @RemainingAmount
END
GO

ALTER TABLE [dbo].[UniversityYearlyFundAllocation]
    ADD CONSTRAINT [FK_UniversityYearlyFundAllocation_University_UniversityID]
        FOREIGN KEY ([UniversityID])
        REFERENCES [dbo].[University]([UniversityID]);
GO

ALTER TABLE [dbo].[UniversityYearlyFundAllocation]
    ADD CONSTRAINT [CHK_UniversityYearlyFundAllocation_Budget]
        CHECK ([dbo].[udfGetBBDYearlyFundRemainingAmount]([YearlyFundID]) - [Budget] >= 0);
GO

ALTER TABLE [dbo].[UniversityYearlyFundAllocation]
    ADD CONSTRAINT [CHK_UniversityYearlyFundAllocation_RemainingBudget]
        CHECK ([RemainingBudget] >= 0);

GO
