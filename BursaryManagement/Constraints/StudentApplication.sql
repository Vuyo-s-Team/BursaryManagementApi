ALTER TABLE [dbo].[StudentApplication]
    ADD CONSTRAINT [FK_StudentApplication_Student_StudentID] 
        FOREIGN KEY ([StudentID])
        REFERENCES [dbo].[Student]([StudentID]);
GO

ALTER TABLE [dbo].[StudentApplication]
    ADD CONSTRAINT [FK_StudentApplication_Program_ProgramID] 
        FOREIGN KEY ([ProgramID])
        REFERENCES [dbo].[Program]([ProgramID]);
GO

ALTER TABLE [dbo].[StudentApplication]
    ADD CONSTRAINT [FK_StudentApplication_Status_StatusID] 
        FOREIGN KEY ([StatusID])
        REFERENCES [dbo].[Status]([StatusID]);
GO
