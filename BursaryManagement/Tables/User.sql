Use UkukhulaBursaryDB
Go
CREATE TABLE [dbo].[User]
(
  [UserID] [int] NOT NULL IDENTITY(1,1) PRIMARY KEY,
  [FirstName] [varchar](50) NOT NULL,
  [LastName] [varchar](50) NOT NULL,
  [ContactID] [int] NOT NULL
);
GO
