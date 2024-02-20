CREATE PROCEDURE [dbo].[spCreateStudent]( 
    @FirstName varchar(120),
    @LastName varchar(120),
    @Email varchar(255),
    @PhoneNumber varchar(255),
    @GenderID int,
    @RaceID int,
    @IDNumber varchar(13),
    @Birthdate date,
    @Age tinyint,
    @UniversityID int
    )
AS
BEGIN
BEGIN TRANSACTION;
BEGIN TRY
    DECLARE @UserID int
    EXEC [dbo].[spCreateUser] @FirstName,@LastName,@Email,@PhoneNumber,@UserID OUTPUT;

        INSERT INTO [dbo].[Student](IDNumber, Birthdate,Age,GenderID,UniversityID,UserID,RaceID)
        VALUES(@IDNumber, @Birthdate, @Age, @GenderID,@UniversityID,@UserID,@RaceID)
    
 COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    ROLLBACK TRANSACTION;
    THROW;
END CATCH;
END;