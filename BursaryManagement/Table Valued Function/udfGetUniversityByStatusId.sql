CREATE FUNCTION [dbo].[udfGetUniversityByStatus](@StatusId int)
    RETURNS TABLE
AS
    RETURN SELECT University.[UniversityID], University.[Name], University.[ProvinceID] FROM [dbo].[University] University 
           LEFT JOIN [dbo].[UniversityFundApplication] UniversityFundApplication
           ON University.UniversityID = UniversityFundApplication.UniversityID
GO