CREATE PROCEDURE [dbo].[uspCreateUniversityAndApplication]
  @Name varchar(120),
  @ProvinceID int,
  @Comment varchar(255),
  @StatusID int
AS
BEGIN TRY
  BEGIN TRANSACTION
    INSERT INTO [dbo].[University] (
      [Name],
      [ProvinceID]
    ) VALUES (
      @Name,
      @ProvinceID
    )
    DECLARE @UniversityID INT = SCOPE_IDENTITY()
    SELECT @UniversityID = IDENT_CURRENT('University')

    INSERT INTO [dbo].[UniversityFundApplication] (
      [FundingYear],
      [Comment],
      [UniversityID],
      [StatusID]
    ) VALUES (
      GETDATE(),
      @Comment,
      @UniversityID,
      @StatusID
    )
  COMMIT
END TRY
BEGIN CATCH
  IF (@@TRANCOUNT > 0)
    ROLLBACK TRANSACTION;
  THROW
  PRINT 'Transaction failed! ' + error_message() 
END CATCH
GO