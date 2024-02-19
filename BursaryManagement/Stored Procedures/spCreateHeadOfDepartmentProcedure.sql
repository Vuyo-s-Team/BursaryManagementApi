CREATE PROCEDURE [dbo].[spCreateHeadOfDepartmentProcedure](
    @FirstName varchar(120),
    @LastName varchar(120),
    @DepartmentID int,
    @UniversityID int,
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

    INSERT INTO [dbo].[HeadOfDepartment](UniversityID, UserID, DepartmentID)
    VALUES (@UniversityID, @UserID, @DepartmentID);

    COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    ROLLBACK TRANSACTION;
    THROW;
END CATCH;
END;
