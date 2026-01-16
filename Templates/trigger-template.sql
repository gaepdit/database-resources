USE airbranch;
GO

CREATE OR ALTER TRIGGER dbo.MyTrigger
    ON dbo.MyTable
    AFTER UPDATE
    AS

/**************************************************************************************************

Author:     Doug Waldron
Overview:
  General statement about the purpose/use of the trigger.

Tables written to:
  MyTable1

Tables accessed:
  MyTable2

Modification History:
When        Who                 What
----------  ------------------  -------------------------------------------------------------------
2026-01-16  DWaldron            Initial version (geco#1234)

***************************************************************************************************/

BEGIN
    SET NOCOUNT ON

    -- Add trigger body here

END
GO
