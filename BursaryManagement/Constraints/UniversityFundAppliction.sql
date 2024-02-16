ALTER TABLE [dbo].[UniversityFundApplication]
    ADD CONSTRAINT [FK_UniversityFundApplication_University_UniversityID] 
        FOREIGN KEY ([UniversityID])
        REFERENCES [dbo].[University]([UniversityID])
GO

ALTER TABLE [dbo].[UniversityFundApplication]
     ADD CONSTRAINT [FK_UniversityFundApplication_Status_StatusID] 
        FOREIGN KEY ([StatusID])
        REFERENCES [dbo].[Status]([StatusID])
GO--