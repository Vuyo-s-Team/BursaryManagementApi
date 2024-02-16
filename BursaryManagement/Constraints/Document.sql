ALTER TABLE [dbo].[Document]
    ADD CONSTRAINT [FK_Document_StudentApplication_StudentApplicationID] 
        FOREIGN KEY ([StudentApplicationID])
        REFERENCES [dbo].[StudentApplication]([StudentApplicationID]);
GO