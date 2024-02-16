ALTER TABLE [dbo].[BBDFundManager]
    ADD CONSTRAINT [FK_BBDFundManager_BBDYearlyFund_YearlyFundID] 
    FOREIGN KEY ([YearlyFundID]) 
    REFERENCES [dbo].[BBDYearlyFund]([YearlyFundID])
GO