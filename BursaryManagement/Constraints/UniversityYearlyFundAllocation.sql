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



ALTER TABLE [dbo].[UniversityYearlyFundAllocation]
    ADD CONSTRAINT [FK_UniversityYearlyFundAllocation_University_UniversityID]
        FOREIGN KEY ([UniversityID])
        REFERENCES [dbo].[University]([UniversityID]);
GO

ALTER TABLE [dbo].[UniversityYearlyFundAllocation]
    ADD CONSTRAINT [CHK_UniversityYearlyFundAllocation_Budget]
        CHECK ([dbo].[udfGetFinancialYearRemainingAmount]([YearlyFundID]) - [Budget] >= 0);
GO

ALTER TABLE [dbo].[UniversityYearlyFundAllocation]
    ADD CONSTRAINT [CHK_UniversityYearlyFundAllocation_RemainingBudget]
        CHECK ([RemainingBudget] >= 0);

GO
CREATE TRIGGER trg_UpdateRemainingBudget_University
ON UniversityYearlyFundAllocation
AFTER INSERT, UPDATE
AS
BEGIN
    -- Recalculate and update the RemainingBudget for the affected rows
    UPDATE UniversityYearlyFundAllocation
    SET RemainingBudget = Budget - (SELECT SUM(budget) FROM StudentYearlyFundAllocation WHERE UniversityFundID = UniversityYearlyFundAllocation.UniversityFundID)
    FROM UniversityYearlyFundAllocation
    INNER JOIN INSERTED ON UniversityYearlyFundAllocation.UniversityFundID = INSERTED.UniversityFundID;
END;
GO

-- Trigger for INSERT, UPDATE, and DELETE on the StudentYearlyFundAllocation table
CREATE TRIGGER trg_UpdateRemainingBudget_Student
ON StudentYearlyFundAllocation
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    -- Recalculate and update the RemainingBudget for the affected UniversityFundID
    UPDATE UniversityYearlyFundAllocation
    SET RemainingBudget = Budget - (SELECT SUM(budget) FROM StudentYearlyFundAllocation WHERE UniversityFundID = UniversityYearlyFundAllocation.UniversityFundID)
    WHERE UniversityFundID IN (SELECT UniversityFundID FROM INSERTED UNION SELECT UniversityFundID FROM DELETED);
END;
GO