CREATE PROCEDURE [dbo].[spCreateUser](
    @FirstName varchar(120),
    @LastName varchar(120),
    @Email varchar(255),
    @PhoneNumber varchar(255)
)
AS
BEGIN
BEGIN TRANSACTION;
BEGIN TRY

    INSERT INTO [dbo].[ContactDetails](Email, PhoneNumber)
    VALUES (@Email, @PhoneNumber);

    DECLARE @ContactID int;
    SET @ContactID = SCOPE_IDENTITY();

    INSERT INTO [dbo].[User](FirstName, LastName, ContactID)
    VALUES (@FirstName, @LastName, @ContactID);

    DECLARE @UserID int;
    SET @UserID = SCOPE_IDENTITY();
    
    COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    ROLLBACK TRANSACTION;
    THROW;
END CATCH;
END;