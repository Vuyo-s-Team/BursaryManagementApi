ALTER TABLE [dbo].[Document]
    ADD CONSTRAINT [FK_Document_StudentApplication_StudentApplicationID] 
        FOREIGN KEY ([ApplicationID])
        REFERENCES [dbo].[StudentApplication]([ApplicationID]);
GO