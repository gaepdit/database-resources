USE airbranch;
GO
SET ANSI_NULLS ON;
GO
SET QUOTED_IDENTIFIER ON;
GO

IF OBJECT_ID('dbo.MyProcedure') IS NULL
    EXEC ('CREATE PROCEDURE dbo.MyProcedure AS SET NOCOUNT ON;')
GO

ALTER PROCEDURE dbo.MyProcedure
    @inputParameter1 nvarchar(1),
        @inputParameter2 int
    AS

    /***************************************************************************

Author:     Doug Waldron
Overview:   General statement about the purpose/use of the procedure

Input Parameters:
    @inputParameter1 - Description
    @inputParameter2 - Description

Output Parameters:
    None

Returns:
     0 on success
    -1 on error

Tables written to:
    MyTable1

Tables accessed:
    MyTable2

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2019-??-??  DWaldron            Initial Version

*******************************************************************************/

    SET XACT_ABORT, NOCOUNT ON;
    BEGIN TRY

        -- Declare variables here if needed

        BEGIN TRANSACTION

            -- Add commands here
            -- Can include multiple transactions if needed

        COMMIT TRANSACTION;

        -- Add queries here to select return data or assign output parameter values if needed

        RETURN 0;

    END TRY
    BEGIN CATCH
        IF @@trancount > 0
            ROLLBACK TRANSACTION;
        DECLARE
            @msg nvarchar(2048) = ERROR_MESSAGE();
        RAISERROR (@msg, 16, 1);
        RETURN -1;
    END CATCH;

GO