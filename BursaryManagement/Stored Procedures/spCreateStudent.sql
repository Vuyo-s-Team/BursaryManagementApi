CREATE PROCEDURE [dbo].[spCreateStudent]( 
    @FirstName varchar(120),
    @LastName varchar(120),
    @Email varchar(255),
    @PhoneNumber varchar(255))
AS
BEGIN
BEGIN TRANSACTION;
BEGIN TRY
 COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    ROLLBACK TRANSACTION;
    THROW;
END CATCH;
END;