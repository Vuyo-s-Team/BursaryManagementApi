--Creating Gender table
CREATE TABLE [dbo].[Gender](
    [GenderID] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
    [Type] [varchar](8) NOT NULL
)