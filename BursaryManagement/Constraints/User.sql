ALTER TABLE [dbo].[User]
    ADD CONSTRAINT [FK_User_ContactDetails_ContactID] 
        FOREIGN KEY ([ContactID])
        REFERENCES [dbo].[ContactDetails]([ContactID]);
GO
