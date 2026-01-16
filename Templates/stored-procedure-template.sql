USE airbranch;
GO

CREATE OR ALTER PROCEDURE dbo.MyProcedure
    @inputParameter1 nvarchar(1),
    @inputParam2     int
AS

/**************************************************************************************************

Author:     Doug Waldron
Overview:
  General statement about the purpose/use of the procedure.

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
----------  ------------------  -------------------------------------------------------------------
2026-01-16  DWaldron            Initial version (geco#1234)

***************************************************************************************************/

    SET XACT_ABORT, NOCOUNT ON
BEGIN TRY

    -- Declare variables here if needed

    BEGIN TRANSACTION;

    -- Can include multiple transactions if needed
    -- Don't include return statement within transaction

    COMMIT TRANSACTION;

    -- Add queries here to select return data or assign output parameter values if needed

    RETURN 0;
END TRY
BEGIN CATCH
    IF @@trancount > 0
        ROLLBACK TRANSACTION;
    DECLARE
        @ErrorMessage nvarchar(4000) = ERROR_MESSAGE(),
        @ErrorSeverity int = ERROR_SEVERITY();
    RAISERROR (@ErrorMessage, @ErrorSeverity, 1);
    RETURN -1;
END CATCH
GO
