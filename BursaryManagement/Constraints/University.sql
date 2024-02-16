ALTER TABLE [dbo].[University]
    ADD CONSTRAINT [FK_University_Province_ProvinceID] 
        FOREIGN KEY ([ProvinceID])
        REFERENCES [dbo].[Province]([ProvinceID]);
GO