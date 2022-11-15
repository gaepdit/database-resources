USE airbranch;
GO
SET ANSI_NULLS ON;
GO

CREATE OR ALTER TRIGGER dbo.MyTrigger
    ON dbo.MyTable
    AFTER UPDATE
    AS

/**************************************************************************************************

Author:     Doug Waldron
Overview:   General statement about the purpose/use of the trigger.

Tables written to:
  MyTable1

Tables accessed:
  MyTable2

Modification History:
When        Who                 What
----------  ------------------  -------------------------------------------------------------------
2022-11-15  DWaldron            Initial version (GECO-001)

***************************************************************************************************/

BEGIN
    SET NOCOUNT ON;

    -- Add trigger body here

END;
GO
