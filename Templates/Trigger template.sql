USE airbranch;
GO
SET ANSI_NULLS ON;
GO
SET QUOTED_IDENTIFIER ON;
GO

IF OBJECT_ID('dbo.TRIGGER1') IS NOT NULL
    DROP TRIGGER dbo.TRIGGER1;
GO

CREATE TRIGGER dbo.TRIGGER1 ON dbo.TABLE1
AFTER UPDATE
AS

/*****************************************************************************

Author:     Brian Gregory
Created:    2016-04-28
Overview:   General statement about WHAT the procedure is doing 

Tables written to:
  TABLE2
  
Tables accessed:
  TABLE3

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2016-04-28  BGregory            Initial Version

*******************************************************************************/

     SET NOCOUNT ON;
    BEGIN TRY
        -- Declare variables here if needed

        BEGIN TRANSACTION;

        -- Add commands here

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@trancount > 0
            ROLLBACK TRANSACTION;
        DECLARE @msg nvarchar(2048) = ERROR_MESSAGE();
        RAISERROR(@msg, 16, 1);
    END CATCH;
GO
