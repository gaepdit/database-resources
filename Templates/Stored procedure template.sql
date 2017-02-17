USE airbranch;
GO
SET ANSI_NULLS ON;
GO
SET QUOTED_IDENTIFIER ON;
GO

IF OBJECT_ID('dbo.PROCEDURE1') IS NOT NULL
    DROP PROCEDURE dbo.PROCEDURE1;
GO

CREATE PROCEDURE dbo.PROCEDURE1
       @inputParameter1 varchar(1)
     , @inputParameter2 int
AS

/*****************************************************************************

Author:     Brian Gregory
Created:    2016-04-28
Overview:   General statement about WHAT the procedure is doing 

Input Parameters:

Output Parameters:

Tables written to:
  TABLE1
  
Tables accessed:
  TABLE2

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2016-04-28  BGregory            Initial Version

*******************************************************************************/

    SET XACT_ABORT, NOCOUNT ON;
    BEGIN TRY
        -- Declare variables here if needed

        BEGIN TRANSACTION;

        -- Add commands here

        COMMIT TRANSACTION;

        -- Add final command here to select return data or assign output parameter values if needed 
    END TRY
    BEGIN CATCH
        IF @@trancount > 0
            ROLLBACK TRANSACTION;
        DECLARE @msg nvarchar(2048) = ERROR_MESSAGE();
        RAISERROR(@msg, 16, 1);
        RETURN -1
    END CATCH;
GO