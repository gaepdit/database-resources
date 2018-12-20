USE [airbranch];
GO
SET ANSI_NULLS ON;
GO
SET QUOTED_IDENTIFIER ON;
GO

IF OBJECT_ID('dbo.MyTrigger') IS NOT NULL
    DROP TRIGGER dbo.MyTrigger;
GO

CREATE TRIGGER dbo.MyTrigger
    ON dbo.MyTable
    AFTER UPDATE
AS

    /***************************************************************************

Author:     Doug Waldron
Overview:   General statement about the purpose/use of the trigger

Tables written to:
    MyTable1

Tables accessed:
    MyTable2

Modification History:
When        Who                 What
----------  ------------------  ----------------------------------------
2019-??-??  DWaldron            Initial Version

*******************************************************************************/

    SET NOCOUNT ON;
BEGIN TRY

    -- Declare variables here if needed

    BEGIN TRANSACTION

        -- Add commands here

    COMMIT TRANSACTION;

END TRY
BEGIN CATCH
    IF @@trancount > 0
        ROLLBACK TRANSACTION;
    DECLARE @msg nvarchar(2048) = ERROR_MESSAGE();
    RAISERROR (@msg, 16, 1);
END CATCH;

GO