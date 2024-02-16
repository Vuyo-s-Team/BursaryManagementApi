Use UkukhulaBursaryDB
Go

CREATE TABLE [dbo].[Program]
(
  [ProgramID] [int] NOT NULL IDENTITY(1,1) PRIMARY KEY,
  [ProgramName] [varchar](120) NOT NULL,
  [DepartmentID] [int] NOT NULL
);
GO
