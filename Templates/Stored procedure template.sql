USE [airbranch];
GO
SET ANSI_NULLS ON;
GO
SET QUOTED_IDENTIFIER ON;
GO

IF OBJECT_ID('dbo.MyProcedure') IS NOT NULL
    DROP PROCEDURE dbo.MyProcedure;
GO

/*****************************************************************************

Author:     Brian Gregory
Created:    2017-??-??
Overview:   General statement about WHAT the procedure is doing

Input Parameters:
    @inputParameter1 - Description
    @inputParameter2 - Description

Output Parameters:
    None

Tables written to:
    MyTable1
  
Tables accessed:
    MyTable2

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2017-??-??  BGregory            Initial Version

*******************************************************************************/

CREATE PROCEDURE dbo.MyProcedure
       @inputParameter1 varchar(1)
     , @inputParameter2 int
AS
     SET XACT_ABORT, NOCOUNT ON;
    BEGIN TRY
        -- Declare variables here if needed

        BEGIN TRANSACTION;

        -- Add commands here
        -- Can include multiple transactions if needed

        COMMIT TRANSACTION;

        -- Add final command here to select return data or assign output parameter values if needed 
    END TRY
    BEGIN CATCH
        IF @@trancount > 0
            ROLLBACK TRANSACTION;
        DECLARE @msg nvarchar(2048) = ERROR_MESSAGE();
        RAISERROR(@msg, 16, 1);
        RETURN -1;
    END CATCH;

GO