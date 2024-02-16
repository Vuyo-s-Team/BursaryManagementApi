Use UkukhulaBursaryDB
Go

CREATE TABLE [dbo].[ContactDetails](
    [ContactID][int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
    [Email] [varchar](255) NULL,
    [PhoneNumber] [varchar](13) NULL
);

GO