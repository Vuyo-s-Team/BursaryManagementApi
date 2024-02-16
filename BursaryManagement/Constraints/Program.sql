uSE UkukhulaBursaryDB
GO

ALTER TABLE [dbo].[Program]
    ADD CONSTRAINT [FK_Program_Department_DepartmentID] 
        FOREIGN KEY ([DepartmentID])
        REFERENCES [dbo].[Department]([DepartmentID]);
GO