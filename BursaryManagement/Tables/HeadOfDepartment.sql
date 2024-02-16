Use UkukhulaBursaryDB
Go

CREATE TABLE [dbo].[HeadOfDepartment](
	[HeadOfDepartmentID] [int] PRIMARY KEY IDENTITY(1, 1) NOT NULL,
    [UserID] [int] NOT NULL,
    [DepartmentID] [int] NOT NULL,
	[UniversityID] [int] NOT NULL
);
GO